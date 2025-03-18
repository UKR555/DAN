<<<<<<< HEAD
# PowerShell script to download sample images for the e-commerce website

# Create images directory if it doesn't exist
if (-not (Test-Path -Path "images")) {
    New-Item -ItemType Directory -Path "images"
}

# Define image URLs and their local filenames
$imageData = @(
    @{
        URL = "https://images.unsplash.com/photo-1542838132-92c53300491e?q=80&w=800&auto=format&fit=crop";
        Filename = "hero.jpg";
        Description = "Hero background image"
    },
    @{
        URL = "https://images.unsplash.com/photo-1607349913338-fca6f7fc42d0?q=80&w=800&auto=format&fit=crop";
        Filename = "about.jpg";
        Description = "About us image"
    },
    @{
        URL = "https://images.unsplash.com/photo-1607082349566-187342175e2f?q=80&w=800&auto=format&fit=crop";
        Filename = "offer.jpg";
        Description = "Special offer background"
    },
    @{
        URL = "https://images.unsplash.com/photo-1619566636858-adf3ef46400b?q=80&w=800&auto=format&fit=crop";
        Filename = "fruits.jpg";
        Description = "Fruits category"
    },
    @{
        URL = "https://images.unsplash.com/photo-1566385101042-1a0aa0c1268c?q=80&w=800&auto=format&fit=crop";
        Filename = "vegetables.jpg";
        Description = "Vegetables category"
    },
    @{
        URL = "https://images.unsplash.com/photo-1628088062854-d1870b4553da?q=80&w=800&auto=format&fit=crop";
        Filename = "dairy.jpg";
        Description = "Dairy products category"
    },
    @{
        URL = "https://images.unsplash.com/photo-1509440159596-0249088772ff?q=80&w=800&auto=format&fit=crop";
        Filename = "bakery.jpg";
        Description = "Bakery items category"
    },
    @{
        URL = "https://images.unsplash.com/photo-1596040033229-a9821ebd058d?q=80&w=800&auto=format&fit=crop";
        Filename = "spices.jpg";
        Description = "Spices category"
    },
    @{
        URL = "https://images.unsplash.com/photo-1621939514649-280e2ee25f60?q=80&w=800&auto=format&fit=crop";
        Filename = "snacks.jpg";
        Description = "Snacks category"
    },
    @{
        URL = "https://images.unsplash.com/photo-1592924357228-91a4daadcfea?q=80&w=800&auto=format&fit=crop";
        Filename = "tomato.jpg";
        Description = "Tomatoes product"
    },
    @{
        URL = "https://images.unsplash.com/photo-1603833665858-e61d17a86224?q=80&w=800&auto=format&fit=crop";
        Filename = "banana.jpg";
        Description = "Bananas product"
    },
    @{
        URL = "https://images.unsplash.com/photo-1589985270958-bf087b2d8ed7?q=80&w=800&auto=format&fit=crop";
        Filename = "butter.jpg";
        Description = "Butter product"
    },
    @{
        URL = "https://images.unsplash.com/photo-1586201375761-83865001e8ac?q=80&w=800&auto=format&fit=crop";
        Filename = "rice.jpg";
        Description = "Rice product"
    },
    @{
        URL = "https://images.unsplash.com/photo-1564890369478-c89ca6d9cde9?q=80&w=800&auto=format&fit=crop";
        Filename = "tea.jpg";
        Description = "Tea product"
    },
    @{
        URL = "https://images.unsplash.com/photo-1509440159596-0249088772ff?q=80&w=800&auto=format&fit=crop";
        Filename = "bread.jpg";
        Description = "Bread product"
    },
    @{
        URL = "https://images.unsplash.com/photo-1532336414038-cf19250c5757?q=80&w=800&auto=format&fit=crop";
        Filename = "apple.jpg";
        Description = "Apple product"
    },
    @{
        URL = "https://images.unsplash.com/photo-1631452180519-c014fe946bc7?q=80&w=800&auto=format&fit=crop";
        Filename = "paneer.jpg";
        Description = "Paneer product"
    },
    @{
        URL = "https://images.unsplash.com/photo-1566478989037-eec170784d0b?q=80&w=800&auto=format&fit=crop";
        Filename = "chips.jpg";
        Description = "Chips product"
    },
    @{
        URL = "https://images.unsplash.com/photo-1576045057995-568f588f82fb?q=80&w=800&auto=format&fit=crop";
        Filename = "spinach.jpg";
        Description = "Spinach product"
    },
    @{
        URL = "https://images.unsplash.com/photo-1621955964441-c173e01c6f3a?q=80&w=800&auto=format&fit=crop";
        Filename = "atta.jpg";
        Description = "Wheat flour product"
    }
)

# Download each image
foreach ($image in $imageData) {
    $outputPath = "images/$($image.Filename)"
    Write-Host "Downloading $($image.Description) to $outputPath..."
    
    try {
        Invoke-WebRequest -Uri $image.URL -OutFile $outputPath
        Write-Host "Downloaded successfully!" -ForegroundColor Green
    } catch {
        Write-Host "Failed to download $($image.Filename): $_" -ForegroundColor Red
    }
}

=======
# PowerShell script to download sample images for the e-commerce website

# Create images directory if it doesn't exist
if (-not (Test-Path -Path "images")) {
    New-Item -ItemType Directory -Path "images"
}

# Define image URLs and their local filenames
$imageData = @(
    @{
        URL = "https://images.unsplash.com/photo-1542838132-92c53300491e?q=80&w=800&auto=format&fit=crop";
        Filename = "hero.jpg";
        Description = "Hero background image"
    },
    @{
        URL = "https://images.unsplash.com/photo-1607349913338-fca6f7fc42d0?q=80&w=800&auto=format&fit=crop";
        Filename = "about.jpg";
        Description = "About us image"
    },
    @{
        URL = "https://images.unsplash.com/photo-1607082349566-187342175e2f?q=80&w=800&auto=format&fit=crop";
        Filename = "offer.jpg";
        Description = "Special offer background"
    },
    @{
        URL = "https://images.unsplash.com/photo-1619566636858-adf3ef46400b?q=80&w=800&auto=format&fit=crop";
        Filename = "fruits.jpg";
        Description = "Fruits category"
    },
    @{
        URL = "https://images.unsplash.com/photo-1566385101042-1a0aa0c1268c?q=80&w=800&auto=format&fit=crop";
        Filename = "vegetables.jpg";
        Description = "Vegetables category"
    },
    @{
        URL = "https://images.unsplash.com/photo-1628088062854-d1870b4553da?q=80&w=800&auto=format&fit=crop";
        Filename = "dairy.jpg";
        Description = "Dairy products category"
    },
    @{
        URL = "https://images.unsplash.com/photo-1509440159596-0249088772ff?q=80&w=800&auto=format&fit=crop";
        Filename = "bakery.jpg";
        Description = "Bakery items category"
    },
    @{
        URL = "https://images.unsplash.com/photo-1596040033229-a9821ebd058d?q=80&w=800&auto=format&fit=crop";
        Filename = "spices.jpg";
        Description = "Spices category"
    },
    @{
        URL = "https://images.unsplash.com/photo-1621939514649-280e2ee25f60?q=80&w=800&auto=format&fit=crop";
        Filename = "snacks.jpg";
        Description = "Snacks category"
    },
    @{
        URL = "https://images.unsplash.com/photo-1592924357228-91a4daadcfea?q=80&w=800&auto=format&fit=crop";
        Filename = "tomato.jpg";
        Description = "Tomatoes product"
    },
    @{
        URL = "https://images.unsplash.com/photo-1603833665858-e61d17a86224?q=80&w=800&auto=format&fit=crop";
        Filename = "banana.jpg";
        Description = "Bananas product"
    },
    @{
        URL = "https://images.unsplash.com/photo-1589985270958-bf087b2d8ed7?q=80&w=800&auto=format&fit=crop";
        Filename = "butter.jpg";
        Description = "Butter product"
    },
    @{
        URL = "https://images.unsplash.com/photo-1586201375761-83865001e8ac?q=80&w=800&auto=format&fit=crop";
        Filename = "rice.jpg";
        Description = "Rice product"
    },
    @{
        URL = "https://images.unsplash.com/photo-1564890369478-c89ca6d9cde9?q=80&w=800&auto=format&fit=crop";
        Filename = "tea.jpg";
        Description = "Tea product"
    },
    @{
        URL = "https://images.unsplash.com/photo-1509440159596-0249088772ff?q=80&w=800&auto=format&fit=crop";
        Filename = "bread.jpg";
        Description = "Bread product"
    },
    @{
        URL = "https://images.unsplash.com/photo-1532336414038-cf19250c5757?q=80&w=800&auto=format&fit=crop";
        Filename = "apple.jpg";
        Description = "Apple product"
    },
    @{
        URL = "https://images.unsplash.com/photo-1631452180519-c014fe946bc7?q=80&w=800&auto=format&fit=crop";
        Filename = "paneer.jpg";
        Description = "Paneer product"
    },
    @{
        URL = "https://images.unsplash.com/photo-1566478989037-eec170784d0b?q=80&w=800&auto=format&fit=crop";
        Filename = "chips.jpg";
        Description = "Chips product"
    },
    @{
        URL = "https://images.unsplash.com/photo-1576045057995-568f588f82fb?q=80&w=800&auto=format&fit=crop";
        Filename = "spinach.jpg";
        Description = "Spinach product"
    },
    @{
        URL = "https://images.unsplash.com/photo-1621955964441-c173e01c6f3a?q=80&w=800&auto=format&fit=crop";
        Filename = "atta.jpg";
        Description = "Wheat flour product"
    }
)

# Download each image
foreach ($image in $imageData) {
    $outputPath = "images/$($image.Filename)"
    Write-Host "Downloading $($image.Description) to $outputPath..."
    
    try {
        Invoke-WebRequest -Uri $image.URL -OutFile $outputPath
        Write-Host "Downloaded successfully!" -ForegroundColor Green
    } catch {
        Write-Host "Failed to download $($image.Filename): $_" -ForegroundColor Red
    }
}

>>>>>>> edb9b46 (Fix #3: Razorpay payment getway added)
Write-Host "All images have been downloaded to the 'images' folder." -ForegroundColor Cyan 