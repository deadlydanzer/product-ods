# product-ods

### 🚀 Branching Strategy

We follow a structured Git workflow to ensure consistent collaboration and clean version control.

#### 🏗️ Base Branch
- All new branches **must be created from the `develop` branch**.

#### 🌿 Branch Naming Convention

Use the following format when creating new feature branches:
feature/<your-username>/<short-description>

##### ✅ Examples:
- `feature/john-doe/login-form-ui`
- `feature/alice/payment-api-integration`

#### 🧭 Rules

1. **Do not** create branches directly from `main` or any other branches.
2. Always **pull the latest `develop`** before creating your branch:
   ```bash
   git checkout develop
   git pull origin develop
   git checkout -b feature/your-username/short-description
   
3. Use lowercase and kebab-case (-) for descriptions.
4. Keep branch names concise but meaningful.
5. Do not commit directly to develop or main.

#### 🔄 Merge Strategy
Pull requests should be raised from your feature branch to develop.
Ensure all code is reviewed and approved before merging.

####🗄️ SQL Script Management
All SQL migration or setup scripts must follow a structured naming and folder convention.

#### 📁 Location
Store all SQL script files under the src/db/ directory.

#### 📄 File Naming Convention
Use the following format for SQL files:
V<version>__<description>.sql

version: Semantic versioning (e.g. 0.0.1, 1.2.0)
description: Short, meaningful name using kebab-case

#### ✅ Examples:
V0.0.1__create-users-table.sql
V1.0.0__add-payment-index.sql

#### 🧭 Rules
- Use semantic versioning (MAJOR.MINOR.PATCH) in file names.
- Use double underscores __ to separate version and description.
- Use only .sql extension.
- Do not modify existing scripts once committed — create a new versioned script if changes are needed.
- Upgrade version patch for pom.xml

#### Pull Request Description

Check List should be verified by Dev before creating PR

- Verify Added Changes [x] 
- Verify File Name [x]
- Verify pom version updated [x]
- Verify changes tested [ ]