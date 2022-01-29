// SPDX-License-Identifier: GPL-3.0
pragma solidity ^0.8.1;
contract decenTwitter{

    struct Tweets {
         string tweet;
    }

    mapping(address => mapping(uint => Tweets)) TweetDatabase;
   

    event Tweeted(string value);
    event Tweetnumber(uint value);
    
    
    function tweet(string memory _tweet, uint _tweetnumber) public {
        TweetDatabase[msg.sender][_tweetnumber] = Tweets(_tweet);

        //TweetDatabase[msg.sender][_tweetnumber] = Tweets(_tweet);

        emit Tweeted(_tweet);
        emit Tweetnumber(_tweetnumber);
    }

   

    function gettweet(uint _tweetnumber) public view returns(string memory){
        return (TweetDatabase[msg.sender][_tweetnumber].tweet);
    }

}