# 🐳 Learn Docker Basics  
**Using Docker Version**: Latest (via Docker Desktop)

---

## 👋 Welcome!

This is my "**Learn Docker Basics**" repository, where I'm documenting my journey of learning Docker from scratch based on the **Programmer Zaman Now (PZN)** course on YouTube.  
All commands are written with comments to help understanding and reuse.

---

## 🎓 Learning Resources

🔥 Huge thanks to [**Pemrograman Zaman Now**](https://youtube.com/@ProgrammerZamanNow) for the amazing Docker tutorial:

- 🎥 [Watch the YouTube Video - Docker Dasar (Bahasa Indonesia)](https://www.youtube.com/watch?v=3_yxVjV88Zk)

---

## 📌 What I'm Learning

### 🧱 Docker Fundamental Concepts
- What is Docker?
- Container vs Virtual Machine
- Why Docker?

### ⚙️ Installation & Setup
- Installing Docker Desktop (Mac & Windows)
- Docker CLI vs Docker Dashboard
- Docker Hub & Docker Images

### 🛠️ Docker CLI Essentials
- `docker --version`, `docker info`
- Image commands: `pull`, `ls`, `rm`, `inspect`, `prune`
- Container commands: `create`, `start`, `stop`, `rm`, `logs`, `exec`, `inspect`, `ls`, `ls -a`
- Volume commands: `create`, `ls`, `rm`, `inspect`, `prune`
- Network commands: `create`, `ls`, `rm`, `inspect`, `connect`, `disconnect`, `prune`
- System cleanup: `docker system prune`

### 🐳 Container Management
- Creating and running containers
- Exposing ports with `--publish`
- Setting environment variables with `--env`
- Assigning limits with `--memory` and `--cpus`
- Using bind mounts and named volumes (`--mount`)
- Interacting with containers via shell: `exec -it container_name bash`
- Checking container logs and inspection

### 🔗 Docker Networking
- Bridge network (default)
- Creating custom bridge networks
- Connecting multiple containers (e.g. MongoDB + Mongo Express)

### 💾 Data Persistence & Backup
- Creating named volumes for data
- Backing up volumes using tar + bind mount
- Restoring data from backup archive to new volume
- Testing restored data in a new container

### 🧪 Practical Examples
- Running containers: `nginx`, `mongodb`, `redis`, `ubuntu`, `mongo-express`
- Creating MongoDB setup with authentication
- MongoDB + Mongo Express integration over custom network
- Volume-based data backup and restore
- Resource-constrained containers (`--memory`, `--cpus`)
- One-time containers using `docker run --rm`

---

## 🚀 What's Next?

Coming up next:
- Docker Compose (multi-container apps)
- Dockerfile Best Practices
- Deploying Real Projects using Docker
- Docker + Golang + MySQL Stack
- CI/CD & Docker in Production

---

Thanks for joining me on this Docker learning journey! 🌟  
Feel free to ⭐️ star this repo if it's helpful.  
Happy Dockering! 🐋
