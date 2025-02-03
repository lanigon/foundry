async function main() {
  const [deployer] = await ethers.getSigners();
  console.log("部署合约的账户:", deployer.address);

  const Token = await ethers.getContractFactory("MyToken");
  const token = await Token.deploy();
  await token.deployed();

  console.log("Token合约地址:", token.address);
}

main()
  .then(() => process.exit(0))
  .catch((error) => {
    console.error(error);
    process.exit(1);
  }); 