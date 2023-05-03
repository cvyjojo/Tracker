-- CreateTable
CREATE TABLE "Example" (
    "id" TEXT NOT NULL,
    "createdAt" TIMESTAMP(3) NOT NULL DEFAULT CURRENT_TIMESTAMP,
    "updatedAt" TIMESTAMP(3) NOT NULL,

    CONSTRAINT "Example_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "Account" (
    "id" TEXT NOT NULL,
    "userId" TEXT NOT NULL,
    "type" TEXT NOT NULL,
    "provider" TEXT NOT NULL,
    "providerAccountId" TEXT NOT NULL,
    "refresh_token" TEXT,
    "access_token" TEXT,
    "expires_at" INTEGER,
    "token_type" TEXT,
    "scope" TEXT,
    "id_token" TEXT,
    "session_state" TEXT,

    CONSTRAINT "Account_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "Session" (
    "id" TEXT NOT NULL,
    "sessionToken" TEXT NOT NULL,
    "userId" TEXT NOT NULL,
    "expires" TIMESTAMP(3) NOT NULL,

    CONSTRAINT "Session_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "User" (
    "id" TEXT NOT NULL,
    "name" TEXT,
    "email" TEXT,
    "emailVerified" TIMESTAMP(3),
    "image" TEXT,

    CONSTRAINT "User_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "VerificationToken" (
    "identifier" TEXT NOT NULL,
    "token" TEXT NOT NULL,
    "expires" TIMESTAMP(3) NOT NULL
);

-- CreateTable
CREATE TABLE "Assest" (
    "id" TEXT NOT NULL,
    "userId" TEXT NOT NULL,

    CONSTRAINT "Assest_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "Gold" (
    "id" TEXT NOT NULL,
    "quantity" TEXT NOT NULL,
    "invested_Amt" TEXT NOT NULL,
    "current_Amt" TEXT NOT NULL,
    "goldId" TEXT NOT NULL,

    CONSTRAINT "Gold_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "Stocks" (
    "id" TEXT NOT NULL,
    "Name" TEXT NOT NULL,
    "Ticker" TEXT NOT NULL,
    "quantity" TEXT NOT NULL,
    "average_price" TEXT NOT NULL,
    "current_price" TEXT NOT NULL,
    "marketcap" TEXT NOT NULL,
    "sector" TEXT NOT NULL,
    "stocksId" TEXT NOT NULL,

    CONSTRAINT "Stocks_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "MutalFunds" (
    "id" TEXT NOT NULL,
    "Name" TEXT NOT NULL,
    "Ticker" TEXT NOT NULL,
    "quantity" TEXT NOT NULL,
    "average_price" TEXT NOT NULL,
    "current_price" TEXT NOT NULL,
    "mutalFundsId" TEXT NOT NULL,

    CONSTRAINT "MutalFunds_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "Cash" (
    "id" TEXT NOT NULL,
    "Amount" TEXT NOT NULL,
    "current_Amt" TEXT NOT NULL,
    "cashId" TEXT NOT NULL,

    CONSTRAINT "Cash_pkey" PRIMARY KEY ("id")
);

-- CreateIndex
CREATE UNIQUE INDEX "Account_provider_providerAccountId_key" ON "Account"("provider", "providerAccountId");

-- CreateIndex
CREATE UNIQUE INDEX "Session_sessionToken_key" ON "Session"("sessionToken");

-- CreateIndex
CREATE UNIQUE INDEX "User_email_key" ON "User"("email");

-- CreateIndex
CREATE UNIQUE INDEX "VerificationToken_token_key" ON "VerificationToken"("token");

-- CreateIndex
CREATE UNIQUE INDEX "VerificationToken_identifier_token_key" ON "VerificationToken"("identifier", "token");

-- CreateIndex
CREATE UNIQUE INDEX "Assest_userId_key" ON "Assest"("userId");

-- CreateIndex
CREATE UNIQUE INDEX "Gold_goldId_key" ON "Gold"("goldId");

-- CreateIndex
CREATE UNIQUE INDEX "Stocks_stocksId_key" ON "Stocks"("stocksId");

-- CreateIndex
CREATE UNIQUE INDEX "Stocks_Ticker_key" ON "Stocks"("Ticker");

-- CreateIndex
CREATE UNIQUE INDEX "MutalFunds_mutalFundsId_key" ON "MutalFunds"("mutalFundsId");

-- CreateIndex
CREATE UNIQUE INDEX "MutalFunds_Ticker_key" ON "MutalFunds"("Ticker");

-- CreateIndex
CREATE UNIQUE INDEX "Cash_cashId_key" ON "Cash"("cashId");

-- AddForeignKey
ALTER TABLE "Account" ADD CONSTRAINT "Account_userId_fkey" FOREIGN KEY ("userId") REFERENCES "User"("id") ON DELETE CASCADE ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "Session" ADD CONSTRAINT "Session_userId_fkey" FOREIGN KEY ("userId") REFERENCES "User"("id") ON DELETE CASCADE ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "Assest" ADD CONSTRAINT "Assest_userId_fkey" FOREIGN KEY ("userId") REFERENCES "User"("id") ON DELETE RESTRICT ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "Gold" ADD CONSTRAINT "Gold_goldId_fkey" FOREIGN KEY ("goldId") REFERENCES "Assest"("id") ON DELETE RESTRICT ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "Stocks" ADD CONSTRAINT "Stocks_stocksId_fkey" FOREIGN KEY ("stocksId") REFERENCES "Assest"("id") ON DELETE RESTRICT ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "MutalFunds" ADD CONSTRAINT "MutalFunds_mutalFundsId_fkey" FOREIGN KEY ("mutalFundsId") REFERENCES "Assest"("id") ON DELETE RESTRICT ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "Cash" ADD CONSTRAINT "Cash_cashId_fkey" FOREIGN KEY ("cashId") REFERENCES "Assest"("id") ON DELETE RESTRICT ON UPDATE CASCADE;
