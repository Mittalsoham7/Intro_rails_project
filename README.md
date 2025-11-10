# Rails Intro Project - Book Library Management System

A comprehensive Rails application demonstrating full-stack web development skills, featuring book management, library locations, search functionality, and mapping integration.

## 🌟 Features

### 📚 Book Management
- **Authors**: Manage book authors with biographies
- **Genres**: Categorize books by genre
- **Books**: Full CRUD operations with associations
- **Relationships**: Books belong to authors, have many genres through join table

### 🗺️ Library Locations
- **Interactive Maps**: Google Maps integration showing library locations
- **Winnipeg Focus**: Includes 5 Winnipeg Public Library branches
- **Location Data**: GPS coordinates, addresses, phone numbers, websites
- **Geolocation**: Auto-centers map based on user location

### 🔍 Search & Navigation
- **Simple Search**: Search books by title, author, or genre
- **Hierarchical Search**: Filter by category/genre
- **Pagination**: Efficient browsing with Kaminari gem
- **Responsive Design**: Bootstrap-styled interface

### 📊 Data Management
- **Multiple Data Sources**: CSV files, Faker gem, API integration
- **200+ Records**: Comprehensive seeding with realistic data
- **Data Validation**: Robust model validations
- **ERD Documentation**: Database schema visualization

## 🛠️ Technical Stack

- **Framework**: Ruby on Rails 8.0
- **Database**: SQLite3
- **Frontend**: HTML5, CSS3, JavaScript
- **Styling**: Bootstrap 3.4.1
- **Mapping**: Google Maps JavaScript API
- **Gems**:
  - `faker` - Data generation
  - `kaminari` - Pagination
  - `bootstrap-sass` - CSS framework
  - `jquery-rails` - JavaScript library

## 🚀 Getting Started

### Prerequisites
- Ruby 3.4.7
- Rails 8.0.3
- SQLite3

### Installation

1. **Clone the repository**
   ```bash
   git clone https://github.com/Mittalsoham7/Intro_rails_project.git
   cd Intro_rails_project
   ```

2. **Install dependencies**
   ```bash
   bundle install
   ```

3. **Setup database**
   ```bash
   rails db:create
   rails db:migrate
   rails db:seed
   ```

4. **Start the server**
   ```bash
   rails server
   ```

5. **Visit the application**
   - Open `http://localhost:3000` in your browser

## 📁 Project Structure

```
Intro_rails_project/
├── app/
│   ├── controllers/     # MVC controllers
│   ├── models/         # ActiveRecord models
│   ├── views/          # ERB templates
│   └── assets/         # Stylesheets, JS
├── db/
│   ├── migrate/        # Database migrations
│   └── seeds.rb        # Data seeding
├── lib/
│   ├── books.csv       # Book data source
│   └── libraries.csv   # Library data source
├── config/             # Rails configuration
├── public/             # Static assets
└── test/               # Test files
```

## 🎯 Key Features Demonstrated

### Database Design
- **5 Models**: Author, Book, Genre, BookGenre, Library
- **Associations**: One-to-many, many-to-many relationships
- **Validations**: Data integrity constraints
- **Indexing**: Optimized database queries

### Web Development
- **RESTful Routes**: Full CRUD operations
- **Responsive UI**: Mobile-friendly design
- **Interactive Maps**: Location-based features
- **Search Functionality**: Real-time filtering

### Data Integration
- **CSV Import**: Structured data loading
- **API Integration**: External service consumption
- **Faker Generation**: Realistic test data
- **Data Relationships**: Complex associations

## 📋 Rubric Compliance

This project meets all requirements for the Rails Intro Project rubric:

- ✅ **Data Gathering**: 4 data sources (CSV, Faker, API, manual)
- ✅ **Database ERD**: Documented schema design
- ✅ **ActiveRecord Models**: 5 models with associations
- ✅ **Validations**: Comprehensive data validation
- ✅ **Data Seeding**: 200+ records from multiple sources
- ✅ **Web Navigation**: About page, menu system
- ✅ **Data Navigation**: Collection views, member pages
- ✅ **Search & Filtering**: Simple and hierarchical search
- ✅ **Pagination**: Large dataset handling
- ✅ **Mapping**: Google Maps integration
- ✅ **Markup & Design**: Valid HTML5, Bootstrap styling

## 🔗 Navigation

- **Home**: `/` - Welcome page
- **Books**: `/books` - Book catalog with search
- **Authors**: `/authors` - Author directory
- **Genres**: `/genres` - Genre browsing
- **Libraries**: `/libraries` - Interactive map view
- **About**: `/pages/about` - Project information

## 📊 Data Sources

1. **Books CSV**: Real book data with titles, authors, genres
2. **Libraries CSV**: US library locations including Winnipeg
3. **Faker Gem**: Generated author biographies and library data
4. **Google Maps API**: Location coordinates and mapping

## 🤝 Contributing

This is an educational project demonstrating Rails development concepts. For improvements or questions, please create an issue in the repository.

## 📄 License

This project is part of a Rails learning curriculum and is available for educational purposes.

---

**Built with ❤️ using Ruby on Rails**
