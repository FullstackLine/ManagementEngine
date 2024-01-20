import {PrismaClient} from "@prisma/client";
const prisma = new PrismaClient();

async function main(){
    

    const seed_system_users_status =  await prisma.$transaction([
        prisma.systemUserStatus.upsert({
            where: {
                id: 1
            },
            create: {
                id:1, name: "awaiting", description: "Awaiting email confirmation."
            },
            update: {}
        }),
        prisma.systemUserStatus.upsert({
            where: {
                id: 2
            },
            create: {
                id:2, name: "confirmed", description: "After email confirmation."
            },
            update: {}
        })
    ]);

    const seed_system_roles = await prisma.$transaction([
        prisma.systemRole.upsert({
            where: {
                id: 1
            },
            create: {
                id: 1,
                name: "root",
                description: "The root role is the super admin system with all permissions.",
            },
            update: {}
        }),
        prisma.systemRole.upsert({
            where: {
                id: 2
            },
            create: {
                id: 2,
                name: "admin",
                description: "The admin role doesn't have the permission to remove or change permissions of root, but have all others permissions like as root.",
            },
            update: {}
        }),
        prisma.systemRole.upsert({
            where: {
                id: 3
            },
            create: {
                id: 3,
            name: "basic",
            description: "The basic role has only permission to do login and wait for more permissions gived from root or admin.",
            },
            update: {}
        })
    ]);



    
    const seed_system_events_types_tracking = await prisma.$transaction([
        prisma.systemEventTypesTracking.upsert({where: {id: 1}, create:{id: 1, name: "user_session_start", description: "Logged in the system."}, update: {}}),
        prisma.systemEventTypesTracking.upsert({where: {id: 2}, create:{id: 2, name: "data_inserted", description: "Inserted new data in the system."}, update: {}}),
        prisma.systemEventTypesTracking.upsert({where: {id: 3}, create:{id: 3, name: "data_updated", description: "Updated data in the system."}, update: {}}),
        prisma.systemEventTypesTracking.upsert({where: {id: 4}, create:{id: 4, name: "data_soft_deleted", description: "Soft deleted data in the system."}, update: {}}),
        prisma.systemEventTypesTracking.upsert({where: {id: 5}, create:{id: 5, name: "data_hard_deleted", description: "Hard deleted data in the system."}, update: {}}),
    ]);

    //Uncommend and use if you need to seed more inforation for core tables.
    //const seed_system_users = await prisma.$transaction([]);
    //const seed_system_users_roles = await prisma.$transaction([]);
    //const seed_system_users_extern_integration = await prisma.$transaction([]);
    //const seed_system_users_extern_integration_tags = await prisma.$transaction([]);
    //const seed_system_permissions = await prisma.$transaction([]);
    //const seed_system_roles_permissions = await prisma.$transaction([]);
    //const seed_system_users_permissions = await prisma.$transaction([]);
    //const seed_system_users_events_tracking = await prisma.$transaction([]);
    //const seed_system_settings = await prisma.$transaction([]);
    //const seed_system_features = await prisma.$transaction([]);
    //const seed_system_tags = await prisma.$transaction([]);
    //const seed_fpm_persons = await prisma.$transaction([]);
    //const seed_fpm_occupations = await prisma.$transaction([]);
    //const seed_fpm_persons_occupations = await prisma.$transaction([]);
    //const seed_fpm_persons_departments = await prisma.$transaction([]);
    //const seed_fpm_departments = await prisma.$transaction([]);
    //const seed_ffm_files = await prisma.$transaction([]);
    //const seed_fdv_data_visualizers = await prisma.$transaction([]);
    //const seed_ftm_tasks = await prisma.$transaction([]);
    //const seed_ftm_users_tasks = await prisma.$transaction([]);

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