module.exports = {
  apps: [
    {
      name: "ty.lerscott.com - client",
      script: "npm",
      args: "start -- -p 4525",
      watch: ["src", ".next"],
      // Delay between restart
      watch_delay: 5000,
    },
  ],
};
