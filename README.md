# 🧪 Chemogen Academy — Invoice Generator

> **Free · Offline · No installation · Works on Windows & Mac**

A self-contained web app to generate professional invoices for **students** and **faculty/staff** at Chemogen Academy, Kolkata. Everything runs inside your browser — no server, no data upload, no cost.

---

## 🌐 Live App

👉 **[Open Invoice Generator](https://YOUR-USERNAME.github.io/chemogen-invoice-generator/)**

> Replace `YOUR-USERNAME` with your GitHub username after setup.

---

## ✨ Features

- 🎓 **Student invoices** — admission, monthly fees, mock tests
- 👨‍🏫 **Faculty invoices** — teaching hours, invigilation, question papers
- 📋 **Upload Excel / CSV** — bulk load your student or staff list
- ✏️ **Per-row editing** — set different course, date, month, discount for each person
- ⚡ **Bulk set** — apply same course/date/discount to selected rows in one click
- ☑️ **Select who to invoice** — tick only the students who paid today
- 📄 **PDF download** — one per student, or all at once
- 🖼️ **Real logo embedded** — Chemogen Academy logo appears on every PDF
- ✍️ **Custom signatures** — upload digital signature images for Prepared by / Checked by / Received by
- 💰 **Course manager** — add, edit, delete courses and charges anytime
- 🔒 **100% offline** — your student data never leaves your computer

---

## 🚀 How to Use

### Step 1 — Choose Invoice Type
Select **🎓 Student** or **👨‍🏫 Faculty/Staff** at the top.

---

### Step 2 — Upload Your Data Sheet

Upload an **Excel (.xlsx)** or **CSV** file with your student/faculty list.

**Minimum columns needed (Student):**

| Name | School/College | Class | Phone |
|------|----------------|-------|-------|
| S. Sarkar | OUR LADY QUEEN OF THE MISSIONS SCHOOL SALT LAKE | 12 | +91-8xxxxxxx6 |
| Arjun Mehta | St. Xaviers Collegiate School | 11 | +91-9xxxxxxxx10 |

**Minimum columns needed (Faculty):**

| Name | Subject | Hours | Phone |
|------|---------|-------|-------|
| Dr. Rahul Sharma | Physical Chemistry | 20 | +91-9800000001 |

> 💡 Click **"Download Template"** to get a ready-made Excel file with the correct format.

---

### Step 3 — Match Your Columns

The app auto-detects which column is Name, School, Class, Phone. If it gets something wrong, just change the dropdown — it shows all your column headers clearly numbered.

---

### Step 4 — Review & Edit Invoice Details

Every student/faculty appears as a **row in an editable table**. You can change individually for each person:

| Field | What it does |
|-------|-------------|
| **Course / Service** | Pick from dropdown (e.g. CCXII26, MTFCXII, BMT) |
| **Month** | Billing month e.g. `Apr-26`, `May-26` |
| **Date** | Invoice date — each person can have a different date |
| **Qty** | Number of students / hours |
| **Disc%** | Discount percentage |
| **Payment** | ONLINE / CASH / CHEQUE / UPI |

**Amount calculates automatically** as you change the course or quantity.

#### ⚡ Bulk Set (for common values)
Select multiple rows using the checkboxes → use the **yellow bar** at top to set Course / Month / Date / Discount for all selected rows at once. Then manually change individual exceptions.

#### ☑️ Selective generation
Only tick the students you want to invoice right now. Come back later and tick the next batch.

---

### Step 4b — Manage Courses & Services

Add, edit or delete courses from the price list:

- **Add new**: Type the code, description and charge → click **Add / Update**
- **Edit existing**: Click ✏️ on any row → modify the form → click **Add / Update**
- **Delete**: Click 🗑️ on any row
- **Import from Excel**: Your price sheet needs columns: `Code`, `Description`, `Charges`

**Built-in course codes:**

| Code | Description | Charge |
|------|-------------|--------|
| CCXI | Admission For Combined Course XI 2025-2026 | ₹1 |
| CCXII | Admission For Combined Course XII 2025-2026 | ₹200 |
| CCXII26 | Admission For Combined Course XII 2026-2027 | ₹2500 |
| MTFCXI | Monthly Tuition Fees For Combine Batch XI | ₹15 |
| MTFCXII | Monthly Tuition Fees For Combine Batch XII | ₹1500 |
| MTFBXI | Monthly Tuition Fees For Basic Batch XI | ₹1200 |
| MTFBXII | Monthly Tuition Fees For Basic Batch XII | ₹120 |
| BMT | Chemistry Board Mock Test (ISC/CBSE/WBCHSE) | ₹80 |
| JMT | JEE Main Mock Test | ₹10 |
| NMT | NEET-UG Mock Test | ₹1,00 |

---

### Step 4c — Signatures

Upload images for the invoice footer:

| Section | Default | You can upload |
|---------|---------|----------------|
| **Prepared by** | Blank | Your stamp or logo |
| **Checked by** | Chemogen Academy logo | Digital signature image |
| **Received by** | Blank | Signature or leave blank for manual |

Accepted formats: PNG, JPG, any image file.

---

### Step 5 — Generate

1. Select the rows you want (checkboxes)
2. Click **Generate Selected Student / Faculty Invoices**
3. Invoices appear as cards below with **Preview** and **⬇ PDF** buttons
4. Or click **⬇ Download All PDFs** to batch-download everything

---

## 📄 Invoice Format

Each PDF includes:
- Chemogen Academy logo and contact details
- Bill To / Payment To section with student/faculty info
- Itemised table with description, month, quantity, unit price, total
- Sub-total, discount, grand total
- Terms & Conditions: *Payment once made is non-refundable*
- Signature row: Prepared by · Checked by (with logo/signature) · Received by

---

## 🔒 Privacy & Security

- **No data is sent anywhere** — everything runs locally in your browser
- Your Excel files are read in memory and never uploaded to any server
- GitHub only hosts the HTML file — not your student data
- Safe to use on any Windows or Mac computer

---

## 🛠️ For Developers

The entire app is a single `index.html` file. To modify:

1. Download `index.html`
2. Open in any text editor (VS Code recommended)
3. Edit and save
4. Upload back to GitHub to deploy

**Dependencies loaded from CDN (internet needed for first load only):**
- [SheetJS](https://sheetjs.com/) — Excel/CSV reading
- [jsPDF](https://github.com/parallax/jsPDF) — PDF generation
- [html2canvas](https://html2canvas.hertzen.com/) — HTML-to-image for PDF

---

## 📞 Support

**Chemogen Academy**
- 📍 Kolkata, West Bengal, India
- 📧 chemogenacademy@gmail.com
- 📞 9836990867 / 7980516785

---

## 📝 Changelog

| Version | Changes |
|---------|---------|
| v6.0 | Per-row editable table, selective generation, bulk set bar |
| v5.0 | Student/Faculty type choice, fixed column auto-mapping |
| v4.0 | Course picker separate from mapping, "different per row" toggles |
| v3.0 | PDF via html2canvas (preview = PDF), real logo embedded |
| v2.0 | Initial release — batch invoice generation |

---

*Built with ❤️ for Chemogen Academy — for the chemistry lovers*
