import {PrismaClient} from "@prisma/client";
const prisma = new PrismaClient();

async function main(){

    const timestamp = Date.now();

    const system_features = [
        {}
    ];
    const system_users_status = [];
    const system_roles = [];
    const system_events_types_tracking = [];
    const system_users_roles = [];
    const system_users = [];

}


main()
.then(async()=>{
    await prisma.$disconnect();
})
.catch(async (e)=>{
    console.error(e);
    await prisma.$disconnect();
    process.exit(1);
})