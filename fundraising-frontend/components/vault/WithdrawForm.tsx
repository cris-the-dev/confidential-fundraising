// components/vault/WithdrawForm.tsx
'use client';

import { useState } from 'react';
import { usePrivy } from '@privy-io/react-auth';
import { useCampaigns } from '../../hooks/useCampaigns';
import { DecryptStatus } from '../../types';

interface Props {
  availableBalance: bigint | null;
  onSuccess?: () => void;
}

export function WithdrawForm({ availableBalance, onSuccess }: Props) {
  const {
    withdrawFromVault,
    getAvailableBalanceStatus,
    completeAvailableBalanceDecryption, // v0.9 complete workflow
    loading
  } = useCampaigns();
  const { authenticated, login } = usePrivy();
  const [amount, setAmount] = useState('');
  const [error, setError] = useState<string | null>(null);
  const [success, setSuccess] = useState(false);
  const [withdrawingStep, setWithdrawingStep] = useState<string>('');

  const handleSubmit = async (e: React.FormEvent) => {
    e.preventDefault();

    if (!authenticated) {
      login();
      return;
    }

    const amountNum = parseFloat(amount);

    if (!amount || amountNum <= 0) {
      setError('Please enter a valid amount greater than 0');
      return;
    }

    try {
      setError(null);
      setSuccess(false);

      // Step 1: Check if available balance is decrypted
      setWithdrawingStep('Checking available balance status...');
      const balanceStatus = await getAvailableBalanceStatus();

      const currentTimeMillis = Date.now();
      const statusCacheExp = balanceStatus.cacheExpiry;

      // Step 2: If not decrypted, use the complete v0.9 self-relaying workflow
      if (balanceStatus.status === DecryptStatus.NONE || (balanceStatus.status === DecryptStatus.DECRYPTED && (balanceStatus.availableAmount < 0n || statusCacheExp <= BigInt(currentTimeMillis)))) {
        setWithdrawingStep('Step 1/4: Marking available balance as decryptable...');

        // This handles all 4 steps of v0.9 self-relaying:
        // 1. Mark as publicly decryptable
        // 2. Get encrypted handle
        // 3. Decrypt using relayer SDK
        // 4. Submit proof to contract
        const result = await completeAvailableBalanceDecryption();

        console.log('✅ Available balance decrypted:', result.cleartext);
        setWithdrawingStep('Decryption complete!');
      } else if (balanceStatus.status === DecryptStatus.PROCESSING) {
        // If it's already processing, complete the workflow
        setWithdrawingStep('Completing decryption workflow...');
        await completeAvailableBalanceDecryption();
      }

      // Step 3: Withdraw from vault
      setWithdrawingStep('Withdrawing from vault...');
      await withdrawFromVault(amount);

      setSuccess(true);
      setAmount('');
      setWithdrawingStep('');

      if (onSuccess) {
        setTimeout(onSuccess, 2000);
      }
    } catch (err: any) {
      console.error('Withdrawal error:', err);

      let errorMessage = err.message || 'Failed to withdraw. Please try again.';

      if (err.message?.includes('MustDecryptFirst')) {
        errorMessage = 'Unable to decrypt available balance. Please try again.';
      } else if (err.message?.includes('DecryptionProcessing')) {
        errorMessage = 'Balance decryption is still processing. Please wait...';
      } else if (err.message?.includes('DecryptionCacheExpired')) {
        errorMessage = 'Your balance cache expired. Please refresh and try again.';
      } else if (err.message?.includes('Insufficient available balance')) {
        errorMessage = 'Insufficient available balance for this withdrawal';
      } else if (err.message?.includes('Decryption timeout')) {
        errorMessage = 'Decryption took too long. Please try again.';
      }

      setError(errorMessage);
      setWithdrawingStep('');
    }
  };

  return (
    <div className="bg-white rounded-xl shadow-sm border border-gray-200 p-4 sm:p-6">
      <h3 className="text-lg sm:text-xl font-bold text-gray-900 mb-4">
        💸 Withdraw from Vault
      </h3>

      <p className="text-sm text-gray-600 mb-6">
        Withdraw your available balance to your wallet.
      </p>

      <form onSubmit={handleSubmit} className="space-y-4">
        {/* Progress Indicator */}
        {withdrawingStep && (
          <div className="bg-blue-50 border border-blue-200 rounded-lg p-4">
            <div className="flex items-center gap-3">
              <svg
                className="animate-spin h-5 w-5 text-blue-600 flex-shrink-0"
                xmlns="http://www.w3.org/2000/svg"
                fill="none"
                viewBox="0 0 24 24"
              >
                <circle
                  className="opacity-25"
                  cx="12"
                  cy="12"
                  r="10"
                  stroke="currentColor"
                  strokeWidth="4"
                ></circle>
                <path
                  className="opacity-75"
                  fill="currentColor"
                  d="M4 12a8 8 0 018-8V0C5.373 0 0 5.373 0 12h4zm2 5.291A7.962 7.962 0 014 12H0c0 3.042 1.135 5.824 3 7.938l3-2.647z"
                ></path>
              </svg>
              <div>
                <p className="text-sm font-medium text-blue-900">{withdrawingStep}</p>
                <p className="text-xs text-blue-700">Please wait, do not close this window</p>
              </div>
            </div>
          </div>
        )}

        <div>
          <label className="block text-sm font-medium text-gray-700 mb-2">
            Amount (ETH)
          </label>
          <input
            type="number"
            step="0.0001"
            min="0.0001"
            max="18"
            value={amount}
            onChange={(e) => setAmount(e.target.value)}
            placeholder="1.0"
            className="w-full px-4 py-3 border border-gray-300 rounded-lg focus:ring-2 focus:ring-purple-500 focus:border-transparent"
            disabled={loading || !!withdrawingStep}
          />
          {availableBalance !== null && (
            <p className="text-xs text-gray-500 mt-1">
              Available: {(Number(availableBalance) / 1e18).toFixed(4)} ETH
            </p>
          )}
        </div>

        {error && (
          <div className="bg-red-50 border border-red-200 rounded-lg p-4">
            <p className="text-sm text-red-800">{error}</p>
          </div>
        )}

        {success && (
          <div className="bg-green-50 border border-green-200 rounded-lg p-4">
            <p className="text-sm text-green-800">
              ✅ Withdrawal successful! Check your wallet.
            </p>
          </div>
        )}

        <button
          type="submit"
          disabled={loading || !!withdrawingStep}
          className="w-full bg-purple-600 text-white py-3 rounded-lg hover:bg-purple-700 transition font-medium disabled:opacity-50 disabled:cursor-not-allowed"
        >
          {loading || withdrawingStep ? (
            <span className="flex items-center justify-center">
              <svg
                className="animate-spin -ml-1 mr-3 h-5 w-5 text-white"
                xmlns="http://www.w3.org/2000/svg"
                fill="none"
                viewBox="0 0 24 24"
              >
                <circle
                  className="opacity-25"
                  cx="12"
                  cy="12"
                  r="10"
                  stroke="currentColor"
                  strokeWidth="4"
                ></circle>
                <path
                  className="opacity-75"
                  fill="currentColor"
                  d="M4 12a8 8 0 018-8V0C5.373 0 0 5.373 0 12h4zm2 5.291A7.962 7.962 0 014 12H0c0 3.042 1.135 5.824 3 7.938l3-2.647z"
                ></path>
              </svg>
              Processing...
            </span>
          ) : !authenticated ? (
            'Connect Wallet to Withdraw'
          ) : (
            'Withdraw from Vault'
          )}
        </button>
        {!withdrawingStep && !loading && (
          <p className="text-xs text-gray-500 text-center">
            💡 Balance automatically decrypted when needed
          </p>
        )}
      </form>

      <div className="mt-4 pt-4 border-t border-gray-200">
        <p className="text-xs text-gray-500">
          ⚠️ You can only withdraw funds that are not locked in campaigns.
        </p>
      </div>
    </div>
  );
}