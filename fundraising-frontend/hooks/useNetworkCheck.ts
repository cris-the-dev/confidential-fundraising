'use client';

import { useEffect, useState } from 'react';
import { useWallets } from '@privy-io/react-auth';
import { sepolia } from 'viem/chains';

export function useNetworkCheck() {
  const { wallets } = useWallets();
  const [isCorrectNetwork, setIsCorrectNetwork] = useState(true);
  const [currentChainId, setCurrentChainId] = useState<number | null>(null);
  const [isSwitching, setIsSwitching] = useState(false);

  useEffect(() => {
    const checkNetwork = async () => {
      const wallet = wallets[0];
      if (!wallet) {
        setIsCorrectNetwork(true);
        return;
      }

      try {
        const provider = await wallet.getEthereumProvider();
        const chainId = await provider.request({ method: 'eth_chainId' });
        const chainIdNumber = parseInt(chainId as string, 16);

        setCurrentChainId(chainIdNumber);
        setIsCorrectNetwork(chainIdNumber === sepolia.id);
      } catch (error) {
        console.error('Error checking network:', error);
      }
    };

    checkNetwork();

    // Listen for network changes
    const wallet = wallets[0];
    if (wallet) {
      wallet.getEthereumProvider().then((provider) => {
        const handleChainChanged = (chainId: string) => {
          const chainIdNumber = parseInt(chainId, 16);
          setCurrentChainId(chainIdNumber);
          setIsCorrectNetwork(chainIdNumber === sepolia.id);
        };

        // @ts-ignore - Privy's provider types don't match EIP-1193 exactly
        provider.on('chainChanged', handleChainChanged);
      });
    }

    // Cleanup listener
    return () => {
      if (wallet) {
        wallet.getEthereumProvider().then((provider) => {
          // @ts-ignore - Privy's provider types don't match EIP-1193 exactly
          provider.removeAllListeners('chainChanged');
        });
      }
    };
  }, [wallets]);

  const switchToSepolia = async () => {
    const wallet = wallets[0];
    if (!wallet) {
      throw new Error('No wallet connected');
    }

    setIsSwitching(true);
    try {
      await wallet.switchChain(sepolia.id);
      setIsCorrectNetwork(true);
    } catch (error) {
      console.error('Error switching network:', error);
      throw error;
    } finally {
      setIsSwitching(false);
    }
  };

  return {
    isCorrectNetwork,
    currentChainId,
    expectedChainId: sepolia.id,
    switchToSepolia,
    isSwitching,
    hasWallet: wallets.length > 0,
  };
}
