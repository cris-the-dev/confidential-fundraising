'use client';

import { useNetworkCheck } from '../hooks/useNetworkCheck';
import { useSnackbar } from '../contexts/SnackbarContext';

const CHAIN_NAMES: { [key: number]: string } = {
  1: 'Ethereum Mainnet',
  5: 'Goerli Testnet',
  11155111: 'Sepolia Testnet',
  137: 'Polygon Mainnet',
  80001: 'Mumbai Testnet',
  42161: 'Arbitrum One',
  421614: 'Arbitrum Sepolia',
  10: 'Optimism',
  8453: 'Base',
};

export default function NetworkSwitcher() {
  const {
    isCorrectNetwork,
    currentChainId,
    expectedChainId,
    switchToSepolia,
    isSwitching,
    hasWallet
  } = useNetworkCheck();
  const { showSnackbar } = useSnackbar();

  // Don't show banner if wallet not connected or on correct network
  if (!hasWallet || isCorrectNetwork) {
    return null;
  }

  const handleSwitch = async () => {
    try {
      await switchToSepolia();
      showSnackbar('Successfully switched to Sepolia Testnet', 'success');
    } catch (error) {
      console.error('Failed to switch network:', error);
      showSnackbar('Failed to switch network. Please switch manually in your wallet.', 'error');
    }
  };

  const currentNetworkName = currentChainId
    ? CHAIN_NAMES[currentChainId] || `Chain ID: ${currentChainId}`
    : 'Unknown Network';

  const expectedNetworkName = CHAIN_NAMES[expectedChainId];

  return (
    <div className="bg-red-600 text-white">
      <div className="max-w-7xl mx-auto px-4 sm:px-6 lg:px-8 py-3">
        <div className="flex flex-col sm:flex-row items-center justify-between gap-3">
          <div className="flex items-center gap-3">
            <div className="flex-shrink-0">
              <svg
                className="h-6 w-6"
                fill="none"
                viewBox="0 0 24 24"
                stroke="currentColor"
              >
                <path
                  strokeLinecap="round"
                  strokeLinejoin="round"
                  strokeWidth={2}
                  d="M12 9v2m0 4h.01m-6.938 4h13.856c1.54 0 2.502-1.667 1.732-3L13.732 4c-.77-1.333-2.694-1.333-3.464 0L3.34 16c-.77 1.333.192 3 1.732 3z"
                />
              </svg>
            </div>
            <div>
              <p className="font-semibold text-sm sm:text-base">
                Wrong Network Detected
              </p>
              <p className="text-xs sm:text-sm text-red-100">
                You are on <span className="font-medium">{currentNetworkName}</span>.
                Please switch to <span className="font-medium">{expectedNetworkName}</span>.
              </p>
            </div>
          </div>

          <button
            onClick={handleSwitch}
            disabled={isSwitching}
            className="flex-shrink-0 bg-white text-red-600 px-4 py-2 rounded-lg font-semibold hover:bg-red-50 transition disabled:opacity-50 disabled:cursor-not-allowed text-sm sm:text-base"
          >
            {isSwitching ? (
              <span className="flex items-center gap-2">
                <svg
                  className="animate-spin h-4 w-4"
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
                  />
                  <path
                    className="opacity-75"
                    fill="currentColor"
                    d="M4 12a8 8 0 018-8V0C5.373 0 0 5.373 0 12h4zm2 5.291A7.962 7.962 0 014 12H0c0 3.042 1.135 5.824 3 7.938l3-2.647z"
                  />
                </svg>
                Switching...
              </span>
            ) : (
              'Switch to Sepolia'
            )}
          </button>
        </div>
      </div>
    </div>
  );
}
