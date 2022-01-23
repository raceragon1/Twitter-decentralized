// SPDX-License-Identifier: GPL-3.0
pragma solidity ^0.8.1;
contract decenTwitter{

    struct allTweets {
        string tweets;
    }

    mapping(address=>mapping(int => allTweets)) public TweetDatabase;

    event Tweeted(string value);
    event Tweetnumber(int value);
    
    int i=0;
    function tweet(string memory Tweet) public {
        i=i+1;
        TweetDatabase[msg.sender][i] = allTweets(Tweet);
        emit Tweeted(Tweet);
        emit Tweetnumber(i);
    }

    function gettweet(int tweetnumber) public returns(string memory){
        return TweetDatabase[msg.sender][tweetnumber];
    }

}