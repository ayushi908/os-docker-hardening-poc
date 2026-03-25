# OS & Docker Hardening POC

## 📌 Overview

This project demonstrates **OS Hardening, Docker Security, and OS-Level Monitoring** using industry best practices.

It covers:

* Linux OS Hardening
* SSH Security
* Audit Logging (auditd)
* File Integrity Monitoring (AIDE)
* Kernel Hardening (sysctl)
* Docker Container Hardening

---

## 🛠️ Tech Stack

* Ubuntu Linux
* Docker
* Alpine Linux
* auditd
* AIDE

---

## 🚀 Steps to Run

### 1. Clone Repo

```bash
git clone https://github.com/your-username/os-docker-hardening-poc.git
cd os-docker-hardening-poc
```

---

### 2. Run OS Hardening

```bash
chmod +x scripts/os_hardening.sh
./scripts/os_hardening.sh
```

---

### 3. Setup auditd

```bash
chmod +x scripts/auditd_rules.sh
./scripts/auditd_rules.sh
```

---

### 4. Setup AIDE

```bash
chmod +x scripts/aide_setup.sh
./scripts/aide_setup.sh
```

---

### 5. Apply sysctl Hardening

```bash
sudo cp scripts/sysctl_hardening.conf /etc/sysctl.conf
sudo sysctl -p
```

---

### 6. Build Docker Image

```bash
docker build -t secure-app .
```

---

### 7. Run Container

```bash
docker run -d secure-app
```

---

## 🔐 Security Features Implemented

### OS Hardening

* Removed unnecessary packages
* Disabled unused services
* SSH root login disabled
* Password authentication disabled

### Monitoring

* auditd configured for critical files
* AIDE for file integrity monitoring

### Kernel Security

* IP forwarding disabled
* ICMP disabled
* Reverse path filtering enabled

### Docker Hardening

* Minimal base image (Alpine)
* Non-root user
* Reduced attack surface

---

## 📊 Expected Output

* `auditd` logs file access changes
* `AIDE` detects file modifications
* Secure Docker container runs without root

---

## 🎯 Use Cases

* DevSecOps practice
* Security baseline setup
* Interview demonstration project

---

## 📌 Future Improvements

* Add Wazuh integration
* Add Docker Bench Security
* Implement SELinux/AppArmor
* CI/CD security scanning

---
