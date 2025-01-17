# SwiftUI-Clean-Architecture

# 📁 Project Structure

```
SwiftArchitecture/
├── 📁  Core/
│   ├── 📁  Localizable/       
│   ├──  📁 Model/               
│   └──  📁 Service/             
│       ├── 📁 Container/       
│       ├── 📁 Database/        
│       ├── 📁 Logger/          
│       ├── 📁 MockService/     
│       └── 📁 Network/         
├── UI/
│   ├── 📁 Feature/             
│   │   ├── 📁 Base/           
│   │   ├── 📁 Favorite/       
│   │   ├── 📁 Home/           
│   │   └── 📁 Profile/        
│   └── 📁 Products/           
├── Utils/
│   ├── 📁 Constants/          
│   ├── 📁 Enums/              
│   │   ├── 📁 Fonts/         
│   │   ├── 📁 Size/          
│   │   └── 📁 LogLevel/      
│   ├── 📁 Extension/          
│   └── 📁 ViewModifier/       
├── 🖼️ Assets/                 
└── SwiftArchitectureApp   

```

# 📂 Folder Descriptions

## Core Layer
<ul>
  <li>Essential services and models</li>
  <li>Service implementations</li>
  <li>Data models</li>
</ul>

## UI Layer
<ul>
  <li>Feature-based organization</li>
  <li>Base components</li>
  <li>Product features</li>
</ul>

## UI
<ul>
  <li>Helper functions</li>
  <li>Constants and enums</li>
  <li>Extensions</li>
  <li>Custom modifiers</li>
</ul>


