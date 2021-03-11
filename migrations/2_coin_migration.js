const MetaCoin = artifacts.require("Metacoin");

module.exports = function(deployer){
    deployer.deploy(MetaCoin);
}