// const http = require('http');
const express = require('express');
const app = express();
const bodyParser = require('body-parser');
const cors = require('cors');
const axios = require('axios');
const j1 = new Map([
    ["name", "Claire"],
    ["age", 17],
    ["gender", "female"],
    ["tags", [1,1,1,1,0,0]]
])
const j2 = new Map([
    ["name", "Joseph Joestar"],
    ["age", 70],
    ["gender", "male"],
    ["tags", [0,1,1,1,0,1]]
])
const j3 = new Map([
    ["name", "Kujo Jotaro"],
    ["age", 18],
    ["gender", "male"],
    ["tags", [1,1,0,0,0,0]]
])
const j4 = new Map([
    ["name", "Tony"],
    ["age", 25],
    ["gender", "male"],
    ["tags", [0,1,0,1,0,0]]
])
const j5 = new Map([
    ["name", "Hu Tao"],
    ["age", 17],
    ["gender", "female"],
    ["tags", [1,1,1,1,1,1]]
])
const j6 = new Map([
    ["name", "Kim"],
    ["age", 27],
    ["gender", "female"],
    ["tags", [1,1,1,0,1,0]]
])
const j7 = new Map([
    ["name", "James L."],
    ["age", 32],
    ["gender", "male"],
    ["tags", [1,0,1,0,1,1]]
])
const j8 = new Map([
    ["name", "Josh"],
    ["age", 30],
    ["gender", "other"],
    ["tags", [1,1,0,1,0,1]]
])
const j9 = new Map([
    ["name", "Bob"],
    ["age", 42],
    ["gender", "male"],
    ["tags", [1,1,0,0,0,1]]
])
const j10 = new Map([
    ["name", "Jasmine"],
    ["age", 29],
    ["gender", "female"],
    ["tags", [0,1,0,1,1,0]]
])

const npc = [j1,j2,j3,j4,j5,j6,j7,j8,j9,j10]

// const db_url = "https://ebond-710ca-default-rtdb.firebaseio.com"
// var firebase = require('firebase')
// const firebaseConfig = {
//     apiKey: "AIzaSyBaS1uQkdkyY_4oNPwZBydMW1dMfO7CCZg",
//     authDomain: "ebond-710ca.firebaseapp.com",
//     databaseURL: "https://ebond-710ca-default-rtdb.firebaseio.com",
//     projectId: "ebond-710ca",
//     storageBucket: "ebond-710ca.appspot.com",
//     messagingSenderId: "712912933834",
//     appId: "1:712912933834:web:ff60770cb6985b948a3533",
//     measurementId: "G-3QRE0E1C1G"
// };
// firebase.initializeApp(firebaseConfig)
// let database = firebase.database()

//middlewares
app.use(cors());
app.use(bodyParser.json());
// app.set('trust proxy', true);

// app.get('/login', (req, res) => {
//     var username = req.query.username
//     var pwd = req.query.password
//     res.send('hello')
// })

app.get('/match', (req, res) => {
    // var myTags = req.query.tags
    var myTags = [1,1,0,1,1,0]
    var min_diff = 11
    var best_match
    npc.forEach(element => {
        var other_tag = element.get('tags')
        var diff = 0
        for (let i = 0; i < myTags.length;i++){
            diff += (myTags[i] != other_tag[i])
        }
        if (diff < min_diff){
            min_diff = diff
            best_match = element
        }
    });
    res.send(best_match)
})

app.listen('3000',(err)=>{
    if(err) console.log(err)
    else console.log('server running');
})

module.exports=app;