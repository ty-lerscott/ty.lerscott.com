module.exports = {
  apps: [
    {
      name: "ty.lerscott.com - DB import",
      script: "npm",
      args: "run db:import",
      watch: ["mysql"],
    },
  ],
};
