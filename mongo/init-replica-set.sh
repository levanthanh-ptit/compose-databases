#!/bin/bash

mongo <<EOF
var config = {
    "_id": "dbrs",
    "version": 1,
    "members": [
        {
            "_id": 1,
            "host": "mongo_s1:27017",
            "priority": 3
        },
        {
            "_id": 2,
            "host": "mongo_s2:27017",
            "priority": 2
        },
        {
            "_id": 3,
            "host": "mongo_s3:27017",
            "priority": 1
        }
    ]
};
rs.initiate(config, { force: true });
rs.status();
EOF