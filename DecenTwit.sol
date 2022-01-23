// SPDX-License-Identifier: GPL-3.0
pragma solidity ^0.8.1;
contract decenTwitter{

    struct allTweets {
        string tweets;
    }

    mapping(address=>mapping(int => allTweets)) public TweetDatabase;
    
    int i=0;
    //function tweet(uint tweetnumber, string memory Tweet) public {
    function tweet(string memory Tweet) public {
        i=i+1;
        TweetDatabase[msg.sender][i] = allTweets(Tweet);
    }

    function gettweet(int tweetnumber) public returns(struct){
        return TweetDatabase[msg.sender][tweetnumber];
    }

}