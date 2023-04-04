/* eslint-disable @next/next/no-html-link-for-pages */

export default function Header() {
  return (
    <>
      <div className="grotesk mx-auto mb-16 flex items-center justify-between bg-black p-4 sm:mx-0 sm:mb-20 sm:px-0 md:px-6">
        <div className=" ml-8 p-4">
          <a href="/" className="align-middle text-3xl font-bold text-white">
            <span>Track</span>
            <span className="text-violet-600">r</span>
          </a>
          <div className="hidden pl-14 align-middle xl:inline-block">
            <a
              href="/"
              className="mr-8 text-xl text-white hover:border-b-2 hover:border-violet-600"
            >
              Cras.
            </a>
            <a
              href="/"
              className="mr-8 text-xl  text-white hover:border-b-2 hover:border-violet-600"
            >
              Cras.
            </a>
            <a
              href="/"
              className="mr-8 text-xl text-white hover:border-b-2 hover:border-violet-600"
            >
              Fringilla.
            </a>
            <a
              href="/"
              className="mr-8 text-xl text-white hover:border-b-2 hover:border-violet-600"
            >
              Enim.
            </a>
          </div>
        </div>

        {/* side bar login and burgur menu */}
        <div className="flex items-center">
          <div className="hidden py-1 text-right xl:inline-block">
            {/* <a className=' inline-flex items-center px-12 py-4 text-lg font-semibold tracking-tighter text-white' href='/'>
							Log in
						</a> */}
            <a
              className="inline-flex items-center bg-violet-600 px-8 py-4 text-lg font-semibold tracking-tighter text-white"
              href="/"
            >
              Login
            </a>
          </div>
          <button className="pl-4 pr-12">
            <svg
              className="mr-auto inline-block text-white xl:hidden"
              width="33"
              height="100"
              viewBox="0 0 23 30"
              fill="none"
              xmlns="http://www.w3.org/2000/svg"
            >
              <path
                d="M0.892578 10.8691H22.1058"
                stroke="white"
                strokeLinecap="square"
                strokeLinejoin="round"
              />
              <path
                d="M0.892578 18.8691H22.1058"
                stroke="white"
                strokeLinecap="square"
                strokeLinejoin="round"
              />
              <path
                d="M22.1066 14.8688H0.893399"
                stroke="white"
                strokeLinecap="square"
                strokeLinejoin="round"
              />
            </svg>
          </button>
        </div>
      </div>
    </>
  );
}

 