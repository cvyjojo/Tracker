import { type NextPage } from "next";
import Head from "next/head";
import Footer from '../components/Footer';
import Header from '../components/Header';
import Layout from '../components/Layout';


const Home: NextPage = () => {

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


