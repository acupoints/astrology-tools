db = db.getSiblingDB("mongo_prod")
db.createUser(
    {
        user: "glsroot",
        pwd: "Umph2014",
        roles: [
            {
                role: "readWrite",
                db: "mongo_prod"
            }
        ]
    }
);