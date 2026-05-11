# 04 - Architecture & Design Decisions

## Chosen Tool: Restic
**Why Restic?**
- Modern, fast, secure
- Built-in AES-256 encryption
- Excellent deduplication and compression
- Supports local and future backends
- Active community and good security track record

## Security Controls Applied
- Client-side encryption (data never written unencrypted)
- Repository password in 600 permission file
- Strict folder permissions (700)
- Exclude lists for temporary/cache files
- One-file-system option to avoid crossing partitions

## 3-2-1 Backup Rule Implementation
- Copy 1: Local SSD (original data)
- Copy 2: Local encrypted Restic repository
- Copy 3: Will be added (external drive or another computer)

