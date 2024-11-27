# YouTubeCoin (YTC)  

A blockchain-inspired project where tokens represent **videos**, allowing users to create, share, and manage engagement with content, inspired by YouTube's functionality.  

---

## Description  

The **YouTubeCoin (YTC)** smart contract mimics the core features of YouTube in a decentralized blockchain environment:  
- **Content Creation**: Tokens act as videos, which only the owner (creator) can mint.  
- **Engagement**: Users can "unlike" or delete engagement by burning tokens.  
- **Sharing**: Videos (tokens) can be transferred between users, similar to sharing YouTube videos.  

This project bridges blockchain technology and video-sharing concepts, making it an innovative approach to modeling digital content interactions.  

---

## Getting Started with Remix  

### 1. **Open Remix**  
   - Go to [Remix IDE](https://remix.ethereum.org/) in your web browser. Remix is an open-source Solidity IDE that allows you to write, deploy, and test Ethereum contracts.

### 2. **Create a New Solidity File**  
   - On the left-hand side of Remix, in the **File Explorer**, click the **"contracts"** folder, and then click on **"New File"**.  
   - Name your file `YouTubeCoin.sol`.  
   - Copy and paste the **YouTubeCoin contract code** into this newly created file.

### 3. **Install OpenZeppelin Contracts (Optional)**  
   Remix has many OpenZeppelin contracts pre-installed, but if you want to ensure that the dependencies are available:  
   - Click on the **"Solidity Compiler"** tab (left sidebar).  
   - Under **"Compile"**, select the appropriate compiler version (use `0.8.23` in your case).  
   - For dependencies, OpenZeppelin's ERC20 and Ownable contracts are usually available by default in Remix.

### 4. **Compile the Contract**  
   - Click on the **"Solidity Compiler"** tab (on the left side) and select the correct version (`0.8.23` in this case).  
   - Click the **"Compile YouTubeCoin.sol"** button.  
   - If everything is fine, the contract should compile without errors.

### 5. **Deploy the Contract**  
   - Go to the **"Deploy & Run Transactions"** tab (left sidebar).  
   - Select the **Environment**:  
     - **JavaScript VM** (local blockchain) - to test the contract in Remix.  
     - **Injected Web3** (MetaMask) - to deploy on a real testnet or mainnet.  
   - Under **"Contract"**, select `YouTubeCoin` from the dropdown (it should be automatically listed if the contract compiled successfully).  
   - Click **Deploy** to deploy the contract.

### 6. **Interacting with the Contract**  
   After deploying, the contract will be listed under **"Deployed Contracts"** in the **Deploy & Run Transactions** tab.  
   - You can interact with the contract through the interface that Remix automatically generates.  
   - Here are some basic interactions:  
     - **Create a video (mint a token)**:  
       - In the **"createVideo"** input, enter the recipient address and the amount of tokens to mint (videos).  
       - Click **"transact"** to mint the tokens.  
     - **Remove engagement (burn tokens)**:  
       - In the **"removeLike"** input, enter the amount to burn.  
       - Click **"transact"** to burn the tokens.  
     - **Share a video (transfer tokens)**:  
       - In the **"shareVideo"** input, enter the recipient address and the amount of tokens to transfer.  
       - Click **"transact"** to share the video.


---

Authors
Created by Paras, Bea Therese Y. 
