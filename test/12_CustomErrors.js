const { expect } = require("chai");
const { ethers } = require("hardhat");

describe("Custom Errors contract", () => {
  let Token, token, owner, addr1 
  beforeEach(async () => {
    Token = await ethers.getContractFactory("CustomErrors");
    token = await Token.deploy();
    [owner, addr1, _] = await ethers.getSigners();
  });
  describe("Deployment", () => {
    it("Should Set the right owner", async () => {
      expect(await token.owner()).to.equal(owner.address);
    });
    //Checking on Some errors with Custom Error Revert
    it("Should Revert back Unauthorized Custom Error", async () => {
      await expect(token.connect(addr1).Add(10)).to.revertedWithCustomError(CustomErrors,"Unauthorized");
    });
  });
});
