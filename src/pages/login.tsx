/* eslint-disable react-hooks/rules-of-hooks */
import { signIn, signOut, useSession } from "next-auth/react";
import Image from "next/image";

const login = () => {
  const { data: session } = useSession();
  console.log(session);
  if (session) {
    return (
      <>
        {session.user && session.user.image ? (
          <>
            <div>welcome, {session.user.email}</div>
            <Image
              src={session.user.image}
              alt="user image"
              width={800}
              height={500}
            />
          </>
        ) : (
          ""
        )}
        <button onClick={() => signOut()}>sign Out</button>
      </>
    );
  }
  return (
    <>
      <div>not sign in dumbfuck</div>
      <button onClick={() => signIn()}>Sign in</button>
    </>
  );
};

export default login;
