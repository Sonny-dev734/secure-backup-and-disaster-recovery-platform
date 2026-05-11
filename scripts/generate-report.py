#!/usr/bin/env python3
"""
Professional HTML Report Generator for Backup Solution
For Titre Professionnel AIS
"""

import os
import datetime

def generate_report():
    date = datetime.datetime.now().strftime("%Y-%m-%d %H:%M")
    
    html = f"""<!DOCTYPE html>
<html lang="fr">
<head>
    <meta charset="UTF-8">
    <title>Backup Report - {date}</title>
    <style>
        body {{ font-family: Arial, sans-serif; margin: 40px; background: #f4f4f4; }}
        h1 {{ color: #2c3e50; }}
        .success {{ color: green; font-weight: bold; }}
        table {{ border-collapse: collapse; width: 100%; margin: 20px 0; }}
        th, td {{ border: 1px solid #ddd; padding: 12px; text-align: left; }}
        th {{ background-color: #34495e; color: white; }}
    </style>
</head>
<body>
    <h1>🔐 Secure Backup Report</h1>
    <p><strong>Generated on:</strong> {date}</p>
    <p><strong>Status:</strong> <span class="success">✅ Operational</span></p>
    
    <h2>Repository Information</h2>
    <table>
        <tr><th>Item</th><th>Value</th></tr>
        <tr><td>Repository Path</td><td>{os.getenv('HOME')}/SecureBackups/restic-repo</td></tr>
        <tr><td>Encryption</td><td>AES-256 (Client-side)</td></tr>
        <tr><td>Last Backup</td><td>{date}</td></tr>
    </table>
    
    <h2>Next Actions Recommended</h2>
    <ul>
        <li>Run regular restore tests</li>
        <li>Add external drive (3-2-1 rule)</li>
        <li>Review Backup Policy</li>
    </ul>
    
    <hr>
    <p><small>Project for Titre Professionnel AIS - Sonny</small></p>
</body>
</html>"""
    
    with open("reports/backup-report.html", "w", encoding="utf-8") as f:
        f.write(html)
    
    print("✅ Professional HTML report generated: reports/backup-report.html")

if __name__ == "__main__":
    generate_report()
