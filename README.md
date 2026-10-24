# OR Safety Intelligence V2.3 — LIVE CLOUD CLEAN DATABASE

This is the **production-only source release** prepared for Netlify Functions and a newly created blank native Google Sheet. No patient incidents, patient PDFs or legacy incident archives are bundled or migrated.

- Google Sheet: https://docs.google.com/spreadsheets/d/1DgXv1S9_T5KMfolTlncbgqLh5EqbE0yNVGt-vC02BRM/edit
- Server pinned to the above ID. Refuses access to any other sheet.
- 20 tabs; INCIDENTS, PDF_ARCHIVE and LEGACY_ARCHIVE start empty.
- CPS_MASTER and SAFETY_INDICATORS contain starter lists only. Confirm NRLS codes before clinical use.
- Production UI has no selectable Demo mode or fallback. Unauthenticated users see only login or configuration errors.
- `npm test` then `npm run build` to verify locally.
- Deploy through Git-based Netlify or Netlify CLI with Functions enabled.
- **Not deployed and not authenticated yet:** hospital administrator must configure Google OAuth, service account, private Drive folder, and Netlify env vars, described in `START_HERE_TH.txt`.
- Do NOT share Google private keys or patient data in chat, ZIP, source control or public Netlify variables.
- Obtain hospital IT / PDPA approval and test permissioning and backups before storing PHI.

For a sample schema workbook open `database/OR_Safety_V23_GOOGLE_CONNECTED_EMPTY.xlsx`. This Excel is a template/backup; the new native Google Sheet above is the actual online database.
