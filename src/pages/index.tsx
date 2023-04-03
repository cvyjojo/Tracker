import { type NextPage } from "next";
import Head from "next/head";
import Link from "next/link";
import { signIn, signOut, useSession } from "next-auth/react";
import Header from '../components/Header';
import Layout from '../components/Layout';
import Footer from '../components/Footer';

import { api } from "~/utils/api";

const Home: NextPage = () => {
  const hello = api.example.hello.useQuery({ text: "from tRPC" });

  return (
    <>
      <Head>
        <title>Trackr</title>
        <meta
          name="description"
          content="Track Your Net Worth Like a Pro with our Finance Net Worth Tracker Dashboard"
        />
        <link rel="icon" href="/favicon.ico" />
      </Head>
      <Header />
      <Layout />
      <Footer />
    </>
  );
};

export default Home;


