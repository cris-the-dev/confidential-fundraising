import type { Metadata } from 'next';
import { Inter } from 'next/font/google';
import './globals.css';
import { FhevmProvider } from '../contexts/FhevmContext';
import { SnackbarProvider } from '../contexts/SnackbarContext';
import Header from '../components/layout/Header';
import Footer from '../components/layout/Footer';
import LoadingWrapper from '../components/LoadingWrapper';
import PrivyProvider from '../contexts/PriviProvider';
import NetworkSwitcher from '../components/NetworkSwitcher';

const inter = Inter({ subsets: ['latin'] });

export const metadata: Metadata = {
  title: 'Confidential Fundraising - FHEVM',
  description: 'Confidential fundraising platform powered by FHEVM and Zama',
  keywords: ['FHEVM', 'Privacy', 'Fundraising', 'Blockchain', 'Encryption'],
  icons: {
      icon: 'logo.png',
    },
};

export default function RootLayout({
  children,
}: {
  children: React.ReactNode;
}) {
  return (
    <html lang="en">
      <body className={inter.className}>
        <PrivyProvider>
          <FhevmProvider>
            <SnackbarProvider>
              <LoadingWrapper>
                <div className="min-h-screen bg-gray-50 flex flex-col">
                  <Header />
                  <NetworkSwitcher />
                  <main className="flex-grow">{children}</main>
                  <Footer />
                </div>
              </LoadingWrapper>
            </SnackbarProvider>
          </FhevmProvider>
        </PrivyProvider>
      </body>
    </html>
  );
}