'use client';

import { useNetworkCheck } from '../hooks/useNetworkCheck';
import { ReactNode } from 'react';

interface RequireCorrectNetworkProps {
  children: ReactNode;
  fallback?: ReactNode;
  showWarning?: boolean;
}

/**
 * Wrapper component that only renders children when on correct network
 * Use this to wrap forms, buttons, or sections that require Sepolia network
 */
export default function RequireCorrectNetwork({
  children,
  fallback,
  showWarning = true,
}: RequireCorrectNetworkProps) {
  const { isCorrectNetwork, switchToSepolia, isSwitching, hasWallet } = useNetworkCheck();

  // If no wallet connected, show children (they'll see "Connect Wallet" prompts anyway)
  if (!hasWallet) {
    return <>{children}</>;
  }

  // If on correct network, show children
  if (isCorrectNetwork) {
    return <>{children}</>;
  }

  // If fallback provided, use it
  if (fallback) {
    return <>{fallback}</>;
  }

  // Default: show warning with switch button
  if (showWarning) {
    return (
      <div className="bg-yellow-50 border border-yellow-200 rounded-lg p-6 text-center">
        <div className="flex flex-col items-center gap-4">
          <svg
            className="h-12 w-12 text-yellow-500"
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
          <div>
            <h3 className="text-lg font-semibold text-gray-900 mb-2">
              Wrong Network
            </h3>
            <p className="text-gray-600 mb-4">
              Please switch to Sepolia Testnet to use this feature
            </p>
            <button
              onClick={switchToSepolia}
              disabled={isSwitching}
              className="bg-purple-600 text-white px-6 py-2 rounded-lg font-semibold hover:bg-purple-700 transition disabled:opacity-50 disabled:cursor-not-allowed"
            >
              {isSwitching ? 'Switching...' : 'Switch to Sepolia'}
            </button>
          </div>
        </div>
      </div>
    );
  }

  // If showWarning is false, return null
  return null;
}
