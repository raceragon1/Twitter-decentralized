// SPDX-License-Identifier: GPL-3.0
pragma solidity ^0.8.1;
contract decenTwitter{

    struct allTweets {
        string tweets;
    }

    mapping(address => mapping(uint => allTweets)) TweetDatabase;
 
    function tweet(uint tweetnumber, string memory Tweet) public {
        
        TweetDatabase[msg.sender][tweetnumber] = allTweets(Tweet);
    }

    function gettweet(uint tweetnumber) public view returns(string memory) {
        return TweetDatabase[msg.sender][tweetnumber];
    }



}