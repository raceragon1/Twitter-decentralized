// SPDX-License-Identifier: GPL-3.0
pragma solidity ^0.8.1;
contract decenTwitter{

    struct allTweets {
        string tweets;
    }

    mapping(address=>mapping(uint => allTweets)) TweetDatabase;

    event Tweeted(string value);
    event Tweetnumber(uint value);
    
    
    function tweet(string memory Tweet, uint _tweetnumber) public {
        TweetDatabase[msg.sender][_tweetnumber] = allTweets(Tweet);
        emit Tweeted(Tweet);
        emit Tweetnumber(_tweetnumber);
    }

    function gettweet(uint _tweetnumber) public returns(string memory){
        return TweetDatabase[msg.sender][_tweetnumber];
    }

}