//
//  PreviewData.swift
//  SwiftFashion
//
//  Created by Larry Nguyen on 4/11/23.
//
//  swiftlint:disable all


import Foundation

struct PreviewData {
    static let order = Order(customerName: L10n.Placeholder.name,
                             email: L10n.Placeholder.email,
                             address: L10n.Placeholder.address,
                             city: L10n.Placeholder.city,
                             state: L10n.Placeholder.state,
                             zip: L10n.Placeholder.zip,
                             items: [orderItem])

    static let orderItem = OrderItem(name: "T-shirt",
                                     image: "tshirt-9E8A8A",
                                     color: "Dusty Gray",
                                     size: "M",
                                     price: 1200,
                                     discount: 240,
                                     quantity: 1)

    static func products() -> [Product] {
        let decoder = JSONDecoder()
        decoder.dateDecodingStrategy = .iso8601
        let jsonData = productJSON.data(using: .utf8)!
        let products = try? decoder.decode([Product].self, from: jsonData)
        return products ?? []
    }

    static let productJSON = """
    [
        {
            "category": "tops",
            "variants": [
                {
                    "color": "Dusty Gray",
                    "product": {
                        "id": "3AF45568-7ADE-412F-9ED6-7A6192958C03"
                    },
                    "id": "E9BE2566-2234-451B-B452-CCAE21678975",
                    "hex": "9E8A8A",
                    "image": "tshirt-9E8A8A",
                    "updatedAt": "2023-04-11T00:00:00Z",
                    "createdAt": "2023-04-11T00:00:00Z"
                },
                {
                    "color": "Tan Hide",
                    "product": {
                        "id": "3AF45568-7ADE-412F-9ED6-7A6192958C03"
                    },
                    "id": "B30F7B69-7DB2-41D9-93AF-2F61457BF700",
                    "hex": "FC9C5E",
                    "image": "tshirt-FC9C5E",
                    "updatedAt": "2023-04-11T00:00:00Z",
                    "createdAt": "2023-04-11T00:00:00Z"
                },
                {
                    "color": "Pickled Bluewood",
                    "product": {
                        "id": "3AF45568-7ADE-412F-9ED6-7A6192958C03"
                    },
                    "id": "64E9FE4C-32E1-4A7B-8176-1322693A944B",
                    "hex": "35455E",
                    "image": "tshirt-35455E",
                    "updatedAt": "2023-04-11T00:00:00Z",
                    "createdAt": "2023-04-11T00:00:00Z"
                }
            ],
            "id": "3AF45568-7ADE-412F-9ED6-7A6192958C03",
            "price": 1200,
            "discount": 240,
            "updatedAt": "2023-04-11T00:00:00Z",
            "sizes": [
                "S",
                "M",
                "L"
            ],
            "description": "Introducing our classic and versatile t-shirt, perfect for any occasion. Made with soft and comfortable cotton, this t-shirt is lightweight and breathable, ensuring all-day comfort.",
            "name": "T-shirt"
        },
        {
            "category": "tops",
            "variants": [
                {
                    "product": {
                        "id": "DB14FC0D-C863-40CA-9233-065F85DD121D"
                    },
                    "color": "Scooter",
                    "id": "37800282-16ED-4F57-ADC0-7BF41644AB36",
                    "hex": "3DBADA",
                    "image": "tanktop-3DBADA",
                    "updatedAt": "2023-04-11T00:00:00Z",
                    "createdAt": "2023-04-11T00:00:00Z"
                },
                {
                    "product": {
                        "id": "DB14FC0D-C863-40CA-9233-065F85DD121D"
                    },
                    "color": "Emerald",
                    "id": "F145CA63-A622-403C-89DB-F8E5FE78272C",
                    "hex": "4EC67C",
                    "image": "tanktop-4EC67C",
                    "updatedAt": "2023-04-11T00:00:00Z",
                    "createdAt": "2023-04-11T00:00:00Z"
                },
                {
                    "product": {
                        "id": "DB14FC0D-C863-40CA-9233-065F85DD121D"
                    },
                    "color": "Sunglow",
                    "id": "A4DFF352-3FB2-4FC0-AA1C-EC0C96B7EFA1",
                    "hex": "FDD54F",
                    "image": "tanktop-FDD54F",
                    "updatedAt": "2023-04-11T00:00:00Z",
                    "createdAt": "2023-04-11T00:00:00Z"
                }
            ],
            "id": "DB14FC0D-C863-40CA-9233-065F85DD121D",
            "price": 800,
            "discount": 160,
            "updatedAt": "2023-04-11T00:00:00Z",
            "sizes": [
                "S",
                "M",
                "L"
            ],
            "description": "This tank top offers exceptional durability and a soft and comfortable fit. The modern and versatile design features a flattering scoop neckline and a relaxed fit, making it perfect for any occasion.",
            "name": "Tank top"
        },
        {
            "category": "tops",
            "variants": [
                {
                    "product": {
                        "id": "5CBED5B5-1F8A-40DF-BFE6-0CABE27EE65B"
                    },
                    "color": "Emerald",
                    "id": "69BB4C2D-69E3-4CA8-8546-7DEDFBD9073D",
                    "hex": "4EC67C",
                    "image": "polo-4EC67C",
                    "updatedAt": "2023-04-11T00:00:00Z",
                    "createdAt": "2023-04-11T00:00:00Z"
                },
                {
                    "product": {
                        "id": "5CBED5B5-1F8A-40DF-BFE6-0CABE27EE65B"
                    },
                    "color": "Abbey",
                    "id": "6AB9D51B-3D77-4B65-B3E3-B0D1023F1253",
                    "hex": "44464A",
                    "image": "polo-44464A",
                    "updatedAt": "2023-04-11T00:00:00Z",
                    "createdAt": "2023-04-11T00:00:00Z"
                }
            ],
            "id": "5CBED5B5-1F8A-40DF-BFE6-0CABE27EE65B",
            "price": 1600,
            "discount": 320,
            "updatedAt": "2023-04-11T00:00:00Z",
            "sizes": [
                "S",
                "M",
                "L"
            ],
            "description": "The classic design features a traditional collar and button-up front, creating a sophisticated and refined look.",
            "name": "Polo shirt"
        },
        {
            "category": "tops",
            "variants": [
                {
                    "color": "Shuttle Gray",
                    "product": {
                        "id": "7D3AB13E-0FEA-426C-ACA6-EA662EB20C14"
                    },
                    "id": "847980AE-C612-47C5-A0D0-1193311A4F3E",
                    "hex": "65676C",
                    "image": "turtleneck-65676C",
                    "updatedAt": "2023-04-11T00:00:00Z",
                    "createdAt": "2023-04-11T00:00:00Z"
                },
                {
                    "color": "Blueberry",
                    "product": {
                        "id": "7D3AB13E-0FEA-426C-ACA6-EA662EB20C14"
                    },
                    "id": "F77F514C-C3E6-487F-AB96-A6158206E5E7",
                    "hex": "745EFC",
                    "image": "turtleneck-745EFC",
                    "updatedAt": "2023-04-11T00:00:00Z",
                    "createdAt": "2023-04-11T00:00:00Z"
                },
                {
                    "color": "Ghost",
                    "product": {
                        "id": "7D3AB13E-0FEA-426C-ACA6-EA662EB20C14"
                    },
                    "id": "680E3459-61C8-48B1-AAAA-A5D85379FD1A",
                    "hex": "CAC8D8",
                    "image": "turtleneck-CAC8D8",
                    "updatedAt": "2023-04-11T00:00:00Z",
                    "createdAt": "2023-04-11T00:00:00Z"
                }
            ],
            "id": "7D3AB13E-0FEA-426C-ACA6-EA662EB20C14",
            "price": 2800,
            "discount": 560,
            "updatedAt": "2023-04-11T00:00:00Z",
            "sizes": [
                "S",
                "M",
                "L"
            ],
            "description": "Bring some joy and positivity to your wardrobe with our cozy and stylish sweater featuring a smile design.",
            "name": "Turtleneck sweater"
        },
        {
            "category": "tops",
            "variants": [
                {
                    "color": "Chestnut Rose",
                    "product": {
                        "id": "5381A415-FDE0-4B09-B686-BE14393B6244"
                    },
                    "id": "5FCAC68D-D7BC-4451-9F52-AF08356DCF44",
                    "hex": "CC4F60",
                    "image": "jersey-CC4F60",
                    "updatedAt": "2023-04-11T00:00:00Z",
                    "createdAt": "2023-04-11T00:00:00Z"
                },
                {
                    "color": "Indigo",
                    "product": {
                        "id": "5381A415-FDE0-4B09-B686-BE14393B6244"
                    },
                    "id": "F2790EA9-BD1F-438E-9550-74E6C6629C98",
                    "hex": "4F72CC",
                    "image": "jersey-4F72CC",
                    "updatedAt": "2023-04-11T00:00:00Z",
                    "createdAt": "2023-04-11T00:00:00Z"
                },
                {
                    "color": "Fuchsia",
                    "product": {
                        "id": "5381A415-FDE0-4B09-B686-BE14393B6244"
                    },
                    "id": "8276993D-9DAE-4F3F-87BF-895A517A0251",
                    "hex": "C94FCC",
                    "image": "jersey-C94FCC",
                    "updatedAt": "2023-04-11T00:00:00Z",
                    "createdAt": "2023-04-11T00:00:00Z"
                },
                {
                    "color": "Persian Plum",
                    "product": {
                        "id": "5381A415-FDE0-4B09-B686-BE14393B6244"
                    },
                    "id": "88BB58E1-CDDD-421E-8516-75117CA8C04F",
                    "hex": "661A24",
                    "image": "jersey-661A24",
                    "updatedAt": "2023-04-11T00:00:00Z",
                    "createdAt": "2023-04-11T00:00:00Z"
                }
            ],
            "id": "5381A415-FDE0-4B09-B686-BE14393B6244",
            "price": 1600,
            "discount": 320,
            "updatedAt": "2023-04-11T00:00:00Z",
            "sizes": [
                "S",
                "M",
                "L",
                "XL"
            ],
            "description": "Get ready to hit the court in style with our high-quality basketball jersey.",
            "name": "Jersey"
        },
        {
            "category": "tops",
            "variants": [
                {
                    "color": "Shuttle Gray",
                    "product": {
                        "id": "3D5EDBCB-C988-43A6-99AA-23D3E72EAAE3"
                    },
                    "id": "8AFAA8C3-4D46-4481-85E9-2AF341CFA517",
                    "hex": "65676C",
                    "image": "signaturepolo-65676C",
                    "updatedAt": "2023-04-11T00:00:00Z",
                    "createdAt": "2023-04-11T00:00:00Z"
                },
                {
                    "color": "Kashmir Blue",
                    "product": {
                        "id": "3D5EDBCB-C988-43A6-99AA-23D3E72EAAE3"
                    },
                    "id": "D9FCB262-0982-4BF6-9487-DF87B3E22985",
                    "hex": "526594",
                    "image": "signaturepolo-526594",
                    "updatedAt": "2023-04-11T00:00:00Z",
                    "createdAt": "2023-04-11T00:00:00Z"
                }
            ],
            "id": "3D5EDBCB-C988-43A6-99AA-23D3E72EAAE3",
            "price": 3200,
            "discount": 640,
            "updatedAt": "2023-04-11T00:00:00Z",
            "sizes": [
                "S",
                "M",
                "L"
            ],
            "description": "Crafted with the finest materials, this polo shirt offers exceptional comfort and durability, ensuring it lasts for years to come.",
            "name": "Signature Polo"
        },
        {
            "category": "tops",
            "variants": [
                {
                    "color": "Emerald",
                    "product": {
                        "id": "2A77F09A-CF68-4695-B10B-928FED78CD94"
                    },
                    "id": "79BB006F-0A0B-4927-985E-C9B3B47704B5",
                    "hex": "4EC67C",
                    "image": "atheletictank-4EC67C",
                    "updatedAt": "2023-04-11T00:00:00Z",
                    "createdAt": "2023-04-11T00:00:00Z"
                },
                {
                    "color": "Purple Heart",
                    "product": {
                        "id": "2A77F09A-CF68-4695-B10B-928FED78CD94"
                    },
                    "id": "ACEAAD09-673E-4279-A110-69B048B0FA8A",
                    "hex": "6D4EC6",
                    "image": "atheletictank-6D4EC6",
                    "updatedAt": "2023-04-11T00:00:00Z",
                    "createdAt": "2023-04-11T00:00:00Z"
                },
                {
                    "color": "Mine Shaft",
                    "product": {
                        "id": "2A77F09A-CF68-4695-B10B-928FED78CD94"
                    },
                    "id": "80F1B361-674E-4D84-B3A2-61568A9B0C4E",
                    "hex": "303030",
                    "image": "atheletictank-303030",
                    "updatedAt": "2023-04-11T00:00:00Z",
                    "createdAt": "2023-04-11T00:00:00Z"
                },
                {
                    "color": "Flamenco",
                    "product": {
                        "id": "2A77F09A-CF68-4695-B10B-928FED78CD94"
                    },
                    "id": "1F5AD3F5-3CAD-4233-A112-10682F126F0A",
                    "hex": "FE800C",
                    "image": "atheletictank-FE800C",
                    "updatedAt": "2023-04-11T00:00:00Z",
                    "createdAt": "2023-04-11T00:00:00Z"
                }
            ],
            "id": "2A77F09A-CF68-4695-B10B-928FED78CD94",
            "price": 2000,
            "discount": 400,
            "updatedAt": "2023-04-11T00:00:00Z",
            "sizes": [
                "S",
                "M",
                "L"
            ],
            "description": "The modern and sleek design features a flattering fit and stylish detailing, making it perfect for both gym sessions and outdoor activities.",
            "name": "Athletic Tanktop"
        },
        {
            "category": "tops",
            "variants": [
                {
                    "color": "Chestnut Rose",
                    "product": {
                        "id": "79B5CBB8-CCDD-4D70-AD36-1EB59793BCF8"
                    },
                    "id": "F901791C-2491-4D9C-95CC-596588E6BB3D",
                    "hex": "CC4F60",
                    "image": "sweater-CC4F60",
                    "updatedAt": "2023-04-11T00:00:00Z",
                    "createdAt": "2023-04-11T00:00:00Z"
                },
                {
                    "color": "Pastel Green",
                    "product": {
                        "id": "79B5CBB8-CCDD-4D70-AD36-1EB59793BCF8"
                    },
                    "id": "870AC49B-6515-4134-BB94-37C83E5EC06A",
                    "hex": "7EE288",
                    "image": "sweater-7EE288",
                    "updatedAt": "2023-04-11T00:00:00Z",
                    "createdAt": "2023-04-11T00:00:00Z"
                }
            ],
            "id": "79B5CBB8-CCDD-4D70-AD36-1EB59793BCF8",
            "price": 2500,
            "discount": 500,
            "updatedAt": "2023-04-11T00:00:00Z",
            "sizes": [
                "S",
                "M",
                "L"
            ],
            "description": "Elevate your sweater collection with our stylish and trendy sweater featuring stripes on the sleeves.",
            "name": "Sweater"
        },
        {
            "category": "bottoms",
            "variants": [
                {
                    "color": "Cabaret",
                    "product": {
                        "id": "21BC866A-A3C9-4FF8-84FC-09A528A4EE73"
                    },
                    "id": "339EF305-EB89-4FCC-95E0-0A87C582061A",
                    "hex": "D83E63",
                    "image": "swimmingshorts-D83E63",
                    "updatedAt": "2023-04-11T00:00:00Z",
                    "createdAt": "2023-04-11T00:00:00Z"
                },
                {
                    "color": "Turquoise Pearl",
                    "product": {
                        "id": "21BC866A-A3C9-4FF8-84FC-09A528A4EE73"
                    },
                    "id": "99357105-2604-44A5-8566-E245FB938747",
                    "hex": "3EBBD8",
                    "image": "swimmingshorts-3EBBD8",
                    "updatedAt": "2023-04-11T00:00:00Z",
                    "createdAt": "2023-04-11T00:00:00Z"
                }
            ],
            "id": "21BC866A-A3C9-4FF8-84FC-09A528A4EE73",
            "price": 900,
            "discount": 0,
            "updatedAt": "2023-04-11T00:00:00Z",
            "sizes": [
                "S",
                "M",
                "L"
            ],
            "description": "Dive into summer with our vibrant and colorful swimming shorts, designed to help you make a splash in style.",
            "name": "Swimming shorts"
        },
        {
            "category": "bottoms",
            "variants": [
                {
                    "color": "Hemp",
                    "product": {
                        "id": "E42FD56E-9A95-487A-A742-E82AF2559F8E"
                    },
                    "id": "99F22958-3812-4853-AA9B-16F2FA22837E",
                    "hex": "8D746F",
                    "image": "shorts-8D746F",
                    "updatedAt": "2023-04-11T00:00:00Z",
                    "createdAt": "2023-04-11T00:00:00Z"
                },
                {
                    "color": "Mineral Green",
                    "product": {
                        "id": "E42FD56E-9A95-487A-A742-E82AF2559F8E"
                    },
                    "id": "BF1943D3-A419-48DB-9679-17D95CE8A311",
                    "hex": "455E55",
                    "image": "shorts-455E55",
                    "updatedAt": "2023-04-11T00:00:00Z",
                    "createdAt": "2023-04-11T00:00:00Z"
                }
            ],
            "id": "E42FD56E-9A95-487A-A742-E82AF2559F8E",
            "price": 1200,
            "discount": 0,
            "updatedAt": "2023-04-11T00:00:00Z",
            "sizes": [
                "S",
                "M",
                "L"
            ],
            "description": "Update your summer wardrobe with our stylish and trendy earth-toned shorts, designed to add a touch of nature-inspired charm to your outfit.",
            "name": "Shorts"
        },
        {
            "category": "bottoms",
            "variants": [
                {
                    "color": "San Juan",
                    "product": {
                        "id": "0AA74C3D-8D0F-436A-A805-9CCB20FCE275"
                    },
                    "id": "8C66C108-6096-448F-B880-1B635757E62A",
                    "hex": "314077",
                    "image": "stripedpants-314077",
                    "updatedAt": "2023-04-11T00:00:00Z",
                    "createdAt": "2023-04-11T00:00:00Z"
                },
                {
                    "color": "Spectra",
                    "product": {
                        "id": "0AA74C3D-8D0F-436A-A805-9CCB20FCE275"
                    },
                    "id": "564792FF-DEC3-4D6E-A27F-9113D0DDFF92",
                    "hex": "2B5853",
                    "image": "stripedpants-2B5853",
                    "updatedAt": "2023-04-11T00:00:00Z",
                    "createdAt": "2023-04-11T00:00:00Z"
                },
                {
                    "color": "Roof Terracotta",
                    "product": {
                        "id": "0AA74C3D-8D0F-436A-A805-9CCB20FCE275"
                    },
                    "id": "FCB2FA61-1D17-4C77-AD5F-75FCE65E9409",
                    "hex": "AD2020",
                    "image": "stripedpants-AD2020",
                    "updatedAt": "2023-04-11T00:00:00Z",
                    "createdAt": "2023-04-11T00:00:00Z"
                }
            ],
            "id": "0AA74C3D-8D0F-436A-A805-9CCB20FCE275",
            "price": 1800,
            "discount": 0,
            "updatedAt": "2023-04-11T00:00:00Z",
            "sizes": [
                "S",
                "M",
                "L"
            ],
            "description": "Made with high-quality and comfortable materials, these pants are perfect for adding a touch of fashion-forward flair to your outfit.",
            "name": "Striped pants"
        },
        {
            "category": "bottoms",
            "variants": [
                {
                    "color": "Horizon",
                    "product": {
                        "id": "8CA0B832-5114-492E-9164-F9B6FCC9072E"
                    },
                    "id": "151CB4ED-1409-4FE6-92E0-4FB9D59E5731",
                    "hex": "5F86A1",
                    "image": "fittedpants-5F86A1",
                    "updatedAt": "2023-04-11T00:00:00Z",
                    "createdAt": "2023-04-11T00:00:00Z"
                },
                {
                    "color": "Amethyst",
                    "product": {
                        "id": "8CA0B832-5114-492E-9164-F9B6FCC9072E"
                    },
                    "id": "2F87BDF3-FDBB-4D39-9659-310E64F48AD2",
                    "hex": "9368C9",
                    "image": "fittedpants-9368C9",
                    "updatedAt": "2023-04-11T00:00:00Z",
                    "createdAt": "2023-04-11T00:00:00Z"
                }
            ],
            "id": "8CA0B832-5114-492E-9164-F9B6FCC9072E",
            "price": 2800,
            "discount": 0,
            "updatedAt": "2023-04-11T00:00:00Z",
            "sizes": [
                "XS",
                "S",
                "M",
                "L"
            ],
            "description": "The comfortable and flexible materials make them ideal for all-day wear, while the sleek and modern look creates a stylish and put-together appearance.",
            "name": "Fitted pants"
        },
        {
            "category": "bottoms",
            "variants": [
                {
                    "color": "Scooter",
                    "product": {
                        "id": "E2E74671-24D6-4564-A0E2-D016329B21E7"
                    },
                    "id": "88383E64-F28F-4B75-AC71-FC5DE469741C",
                    "hex": "3DBADA",
                    "image": "sweatpants-3DBADA",
                    "updatedAt": "2023-04-11T00:00:00Z",
                    "createdAt": "2023-04-11T00:00:00Z"
                },
                {
                    "color": "Pastel Green",
                    "product": {
                        "id": "E2E74671-24D6-4564-A0E2-D016329B21E7"
                    },
                    "id": "91C961C7-B039-4DF9-AD5C-A81CB64F44A2",
                    "hex": "82D67D",
                    "image": "sweatpants-82D67D",
                    "updatedAt": "2023-04-11T00:00:00Z",
                    "createdAt": "2023-04-11T00:00:00Z"
                },
                {
                    "color": "Antique Brass",
                    "product": {
                        "id": "E2E74671-24D6-4564-A0E2-D016329B21E7"
                    },
                    "id": "D1E81E91-93AF-4FC8-956B-CB7200B208A5",
                    "hex": "CC9461",
                    "image": "sweatpants-CC9461",
                    "updatedAt": "2023-04-11T00:00:00Z",
                    "createdAt": "2023-04-11T00:00:00Z"
                }
            ],
            "id": "E2E74671-24D6-4564-A0E2-D016329B21E7",
            "price": 1400,
            "discount": 0,
            "updatedAt": "2023-04-11T00:00:00Z",
            "sizes": [
                "S",
                "M",
                "L"
            ],
            "description": "Whether you're binge-watching your favorite show or hitting the gym, our sweatpants are the perfect choice for ultimate comfort and style.",
            "name": "Sweatpants"
        },
        {
            "category": "bottoms",
            "variants": [
                {
                    "color": "Hemlock",
                    "product": {
                        "id": "EEBD5CFF-D842-4B43-B892-1BD5F0D1406F"
                    },
                    "id": "DAD3A404-66D9-4B3E-8532-E8912FF6E869",
                    "hex": "5E563C",
                    "image": "pants-5E563C",
                    "updatedAt": "2023-04-11T00:00:00Z",
                    "createdAt": "2023-04-11T00:00:00Z"
                },
                {
                    "color": "Black Coral Pearl",
                    "product": {
                        "id": "EEBD5CFF-D842-4B43-B892-1BD5F0D1406F"
                    },
                    "id": "BCF813AC-F001-4514-9FE1-942FB70EA551",
                    "hex": "555D68",
                    "image": "pants-555D68",
                    "updatedAt": "2023-04-11T00:00:00Z",
                    "createdAt": "2023-04-11T00:00:00Z"
                },
                {
                    "color": "Kashmir Blue",
                    "product": {
                        "id": "EEBD5CFF-D842-4B43-B892-1BD5F0D1406F"
                    },
                    "id": "A9A2A1F6-33D3-4134-8398-C24C5E29BCBB",
                    "hex": "496998",
                    "image": "pants-496998",
                    "updatedAt": "2023-04-11T00:00:00Z",
                    "createdAt": "2023-04-11T00:00:00Z"
                },
                {
                    "color": "Pine",
                    "product": {
                        "id": "EEBD5CFF-D842-4B43-B892-1BD5F0D1406F"
                    },
                    "id": "778A6DF4-5863-4E11-B4E9-0E5F04AE2DF8",
                    "hex": "4AA483",
                    "image": "pants-4AA483",
                    "updatedAt": "2023-04-11T00:00:00Z",
                    "createdAt": "2023-04-11T00:00:00Z"
                }
            ],
            "id": "EEBD5CFF-D842-4B43-B892-1BD5F0D1406F",
            "price": 2200,
            "discount": 0,
            "updatedAt": "2023-04-11T00:00:00Z",
            "sizes": [
                "S",
                "M",
                "L",
                "XL"
            ],
            "description": "The versatile and classic design features a slim fit and ankle-length cut, making them perfect for dressing up or down.",
            "name": "Pants"
        },
        {
            "category": "dresses",
            "variants": [
                {
                    "color": "Emerald",
                    "product": {
                        "id": "683B46BB-879B-424E-B2FE-D8576BA7FBE4"
                    },
                    "id": "B7D22346-9D75-4355-90CC-C3FB30DD2E67",
                    "hex": "4EC67C",
                    "image": "sundress-4EC67C",
                    "updatedAt": "2023-04-11T00:00:00Z",
                    "createdAt": "2023-04-11T00:00:00Z"
                },
                {
                    "color": "Bright Sun",
                    "product": {
                        "id": "683B46BB-879B-424E-B2FE-D8576BA7FBE4"
                    },
                    "id": "CB6DAB89-7E19-4E1D-B995-B3CD90E4B432",
                    "hex": "FFD53E",
                    "image": "sundress-FFD53E",
                    "updatedAt": "2023-04-11T00:00:00Z",
                    "createdAt": "2023-04-11T00:00:00Z"
                }
            ],
            "id": "683B46BB-879B-424E-B2FE-D8576BA7FBE4",
            "price": 2000,
            "discount": 0,
            "updatedAt": "2023-04-11T00:00:00Z",
            "sizes": [
                "S",
                "M",
                "L",
                "XL"
            ],
            "description": "Made with lightweight and comfortable materials, these sundresses are designed to keep you cool and stylish all day long.",
            "name": "Sundress"
        },
        {
            "category": "dresses",
            "variants": [
                {
                    "color": "Melrose",
                    "product": {
                        "id": "8937591E-B5E1-4B70-AA7B-7E7FD42C21F9"
                    },
                    "id": "AFC9EA6C-EC78-4D35-BBE0-1A4ACA655C4C",
                    "hex": "94A5FF",
                    "image": "longsleevedress-94A5FF",
                    "updatedAt": "2023-04-11T00:00:00Z",
                    "createdAt": "2023-04-11T00:00:00Z"
                },
                {
                    "color": "Bright Sun",
                    "product": {
                        "id": "8937591E-B5E1-4B70-AA7B-7E7FD42C21F9"
                    },
                    "id": "737CDD70-03A0-4841-BF83-483C0A7FD26C",
                    "hex": "FFD53E",
                    "image": "longsleevedress-FFD53E",
                    "updatedAt": "2023-04-11T00:00:00Z",
                    "createdAt": "2023-04-11T00:00:00Z"
                }
            ],
            "id": "8937591E-B5E1-4B70-AA7B-7E7FD42C21F9",
            "price": 2600,
            "discount": 0,
            "updatedAt": "2023-04-11T00:00:00Z",
            "sizes": [
                "S",
                "M",
                "L"
            ],
            "description": "Make a statement with our elegant and sophisticated long-sleeved dresses, perfect for any formal occasion.",
            "name": "Long sleeved"
        },
        {
            "category": "dresses",
            "variants": [
                {
                    "color": "Alto",
                    "product": {
                        "id": "97202E58-CD43-4092-9CAE-E4E2DA835A2F"
                    },
                    "id": "8B8985B4-A063-4FBB-AE3C-71B38B27FA11",
                    "hex": "E0E0E0",
                    "image": "dress-E0E0E0",
                    "updatedAt": "2023-04-11T00:00:00Z",
                    "createdAt": "2023-04-11T00:00:00Z"
                },
                {
                    "color": "Geraldine",
                    "product": {
                        "id": "97202E58-CD43-4092-9CAE-E4E2DA835A2F"
                    },
                    "id": "C3373686-3398-4F03-A38E-6AA7079291D5",
                    "hex": "FB9C87",
                    "image": "dress-FB9C87",
                    "updatedAt": "2023-04-11T00:00:00Z",
                    "createdAt": "2023-04-11T00:00:00Z"
                },
                {
                    "color": "Scooter",
                    "product": {
                        "id": "97202E58-CD43-4092-9CAE-E4E2DA835A2F"
                    },
                    "id": "6EB2CEE3-9AD4-4074-B95E-D502078DE549",
                    "hex": "3DBADA",
                    "image": "dress-3DBADA",
                    "updatedAt": "2023-04-11T00:00:00Z",
                    "createdAt": "2023-04-11T00:00:00Z"
                }
            ],
            "id": "97202E58-CD43-4092-9CAE-E4E2DA835A2F",
            "price": 2000,
            "discount": 0,
            "updatedAt": "2023-04-11T00:00:00Z",
            "sizes": [
                "S",
                "M",
                "L"
            ],
            "description": "Whether you're attending a wedding or a night out with friends, our dresses are the perfect choice for effortless style and comfort.",
            "name": "Dress"
        },
        {
            "category": "dresses",
            "variants": [
                {
                    "color": "Chestnut Rose",
                    "product": {
                        "id": "965CCE25-A650-4038-AC76-5D355C07A355"
                    },
                    "id": "2EB3B301-00C8-478A-863A-0479B464A714",
                    "hex": "CB525F",
                    "image": "cocktaildress-CB525F",
                    "updatedAt": "2023-04-11T00:00:00Z",
                    "createdAt": "2023-04-11T00:00:00Z"
                },
                {
                    "color": "Butterfly Bush",
                    "product": {
                        "id": "965CCE25-A650-4038-AC76-5D355C07A355"
                    },
                    "id": "7CFACAC4-4C75-4B73-ACBE-080877672436",
                    "hex": "4F58A1",
                    "image": "cocktaildress-4F58A1",
                    "updatedAt": "2023-04-11T00:00:00Z",
                    "createdAt": "2023-04-11T00:00:00Z"
                },
                {
                    "color": "Cutty Sark",
                    "product": {
                        "id": "965CCE25-A650-4038-AC76-5D355C07A355"
                    },
                    "id": "4E2BA1AD-8971-4F64-B180-46AAF4847939",
                    "hex": "497673",
                    "image": "cocktaildress-497673",
                    "updatedAt": "2023-04-11T00:00:00Z",
                    "createdAt": "2023-04-11T00:00:00Z"
                }
            ],
            "id": "965CCE25-A650-4038-AC76-5D355C07A355",
            "price": 2200,
            "discount": 0,
            "updatedAt": "2023-04-11T00:00:00Z",
            "sizes": [
                "S",
                "M",
                "L"
            ],
            "description": "The fabric is soft to the touch and drapes beautifully, creating a flowing and elegant look that's sure to impress.",
            "name": "Cocktail dress"
        },
        {
            "category": "footwear",
            "variants": [
                {
                    "color": "Emerald",
                    "product": {
                        "id": "3120E708-A003-4865-9B28-F408C1A8117C"
                    },
                    "id": "E1F60FEA-CFF5-4708-8DF9-2F73C1914DD5",
                    "hex": "57C983",
                    "image": "lowtops-57C983",
                    "updatedAt": "2023-04-11T00:00:00Z",
                    "createdAt": "2023-04-11T00:00:00Z"
                },
                {
                    "product": {
                        "id": "3120E708-A003-4865-9B28-F408C1A8117C"
                    },
                    "color": "New Car",
                    "id": "C3D327FB-EC45-40E5-BF9C-FD397BB5F07F",
                    "hex": "215DB8",
                    "image": "lowtops-215DB8",
                    "updatedAt": "2023-04-11T00:00:00Z",
                    "createdAt": "2023-04-11T00:00:00Z"
                },
                {
                    "product": {
                        "id": "3120E708-A003-4865-9B28-F408C1A8117C"
                    },
                    "color": "Medium Purple",
                    "id": "4950FA50-A798-4CD1-8627-E389979174EE",
                    "hex": "9251E3",
                    "image": "lowtops-9251E3",
                    "updatedAt": "2023-04-11T00:00:00Z",
                    "createdAt": "2023-04-11T00:00:00Z"
                }
            ],
            "id": "3120E708-A003-4865-9B28-F408C1A8117C",
            "price": 4200,
            "discount": 0,
            "updatedAt": "2023-04-11T00:00:00Z",
            "sizes": [
                "8",
                "9",
                "10",
                "11",
                "12"
            ],
            "description": "These shoes are characterized by their low-cut design that sits below the ankle, providing a comfortable and casual look that's perfect for everyday wear.",
            "name": "Low tops"
        },
        {
            "category": "footwear",
            "variants": [
                {
                    "product": {
                        "id": "6D051559-C48F-4BBE-AD72-5031CC5C33CE"
                    },
                    "color": "Chambray",
                    "id": "D0CAA96B-7055-46FD-9743-693A5C436F20",
                    "hex": "3A3E99",
                    "image": "heels-3A3E99",
                    "updatedAt": "2023-04-11T00:00:00Z",
                    "createdAt": "2023-04-11T00:00:00Z"
                },
                {
                    "product": {
                        "id": "6D051559-C48F-4BBE-AD72-5031CC5C33CE"
                    },
                    "color": "Tall Poppy",
                    "id": "4908A0BA-E610-4C80-B787-0299BB210277",
                    "hex": "B42837",
                    "image": "heels-B42837",
                    "updatedAt": "2023-04-11T00:00:00Z",
                    "createdAt": "2023-04-11T00:00:00Z"
                }
            ],
            "id": "6D051559-C48F-4BBE-AD72-5031CC5C33CE",
            "price": 6000,
            "discount": 0,
            "updatedAt": "2023-04-11T00:00:00Z",
            "sizes": [
                "5",
                "6",
                "7",
                "8"
            ],
            "description": "Whether you're dressing up for a formal event or adding a touch of sophistication to your everyday look, these high heels are sure to turn heads.",
            "name": "High heels"
        },
        {
            "category": "footwear",
            "variants": [
                {
                    "product": {
                        "id": "B943B91A-1AB6-4014-A6E8-0E1D7C3CD3B0"
                    },
                    "color": "Irish Coffee",
                    "id": "F9611BB2-4FE9-4CC5-8AEF-904C7B79DAC8",
                    "hex": "593B20",
                    "image": "dressshoes-593B20",
                    "updatedAt": "2023-04-11T00:00:00Z",
                    "createdAt": "2023-04-11T00:00:00Z"
                }
            ],
            "id": "B943B91A-1AB6-4014-A6E8-0E1D7C3CD3B0",
            "price": 5400,
            "discount": 0,
            "updatedAt": "2023-04-11T00:00:00Z",
            "sizes": [
                "7",
                "8",
                "9",
                "10"
            ],
            "description": "The high-quality construction ensures that they will last for years to come, making them a valuable investment in your formal wardrobe.",
            "name": "Dress shoes"
        },
        {
            "category": "footwear",
            "variants": [
                {
                    "product": {
                        "id": "6DCEDADC-1397-48FB-95D2-00DACE5D2B93"
                    },
                    "color": "Inchworm",
                    "id": "2A165CFC-04C6-42E2-A9BD-74C7C7C16DE7",
                    "hex": "94EA76",
                    "image": "sandal-94EA76",
                    "updatedAt": "2023-04-11T00:00:00Z",
                    "createdAt": "2023-04-11T00:00:00Z"
                },
                {
                    "product": {
                        "id": "6DCEDADC-1397-48FB-95D2-00DACE5D2B93"
                    },
                    "color": "Flamenco",
                    "id": "939D9D70-DF0E-4432-9336-5013B6E0116F",
                    "hex": "FE800C",
                    "image": "sandal-FE800C",
                    "updatedAt": "2023-04-11T00:00:00Z",
                    "createdAt": "2023-04-11T00:00:00Z"
                },
                {
                    "product": {
                        "id": "6DCEDADC-1397-48FB-95D2-00DACE5D2B93"
                    },
                    "color": "Bright Sun",
                    "id": "887CA7BE-E0CE-4077-A9CA-F773CB697124",
                    "hex": "FFD53E",
                    "image": "sandal-FFD53E",
                    "updatedAt": "2023-04-11T00:00:00Z",
                    "createdAt": "2023-04-11T00:00:00Z"
                }
            ],
            "id": "6DCEDADC-1397-48FB-95D2-00DACE5D2B93",
            "price": 2200,
            "discount": 0,
            "updatedAt": "2023-04-11T00:00:00Z",
            "sizes": [
                "S",
                "M",
                "L"
            ],
            "description": "Our sandals are designed with comfort in mind, featuring a cushioned footbed and a supportive sole that provides ample arch support and shock absorption. This ensures that you can wear them all day without experiencing any discomfort or pain.",
            "name": "Sandals"
        },
        {
            "category": "footwear",
            "variants": [
                {
                    "product": {
                        "id": "D3A27FF3-1908-481F-B37E-8E924E7985BF"
                    },
                    "color": "Scooter",
                    "id": "FF7DA359-B8F8-4725-8C59-BF8600A50692",
                    "hex": "3DBADA",
                    "image": "rainboots-3DBADA",
                    "updatedAt": "2023-04-11T00:00:00Z",
                    "createdAt": "2023-04-11T00:00:00Z"
                },
                {
                    "product": {
                        "id": "D3A27FF3-1908-481F-B37E-8E924E7985BF"
                    },
                    "color": "Bright Sun",
                    "id": "9EA959A4-1299-438B-B8D2-A36B7102471A",
                    "hex": "FFD53E",
                    "image": "rainboots-FFD53E",
                    "updatedAt": "2023-04-11T00:00:00Z",
                    "createdAt": "2023-04-11T00:00:00Z"
                },
                {
                    "product": {
                        "id": "D3A27FF3-1908-481F-B37E-8E924E7985BF"
                    },
                    "color": "Flamingo",
                    "id": "661D02B3-5416-489C-B5FF-D46709303FFD",
                    "hex": "EE5D3D",
                    "image": "rainboots-EE5D3D",
                    "updatedAt": "2023-04-11T00:00:00Z",
                    "createdAt": "2023-04-11T00:00:00Z"
                },
                {
                    "product": {
                        "id": "D3A27FF3-1908-481F-B37E-8E924E7985BF"
                    },
                    "color": "Fuchsia",
                    "id": "A9069CA3-9874-4FDF-BB0D-5CBDE05AAA94",
                    "hex": "C94FCC",
                    "image": "rainboots-C94FCC",
                    "updatedAt": "2023-04-11T00:00:00Z",
                    "createdAt": "2023-04-11T00:00:00Z"
                }
            ],
            "id": "D3A27FF3-1908-481F-B37E-8E924E7985BF",
            "price": 2200,
            "discount": 0,
            "updatedAt": "2023-04-11T00:00:00Z",
            "sizes": [
                "6",
                "7",
                "8",
                "9",
                "10"
            ],
            "description": "Our rain boots are crafted from high-quality rubber or synthetic materials that are waterproof and durable, ensuring that they can withstand even the wettest and muddiest conditions.",
            "name": "Rainboots"
        },
        {
            "category": "footwear",
            "variants": [
                {
                    "product": {
                        "id": "004F5510-77C3-4AF9-8E9B-30D916E7DF3A"
                    },
                    "color": "Emerald",
                    "id": "A9EBEA1F-5D57-46EF-B79D-9B5423E25F94",
                    "hex": "4EC67C",
                    "image": "boots-4EC67C",
                    "updatedAt": "2023-04-11T00:00:00Z",
                    "createdAt": "2023-04-11T00:00:00Z"
                },
                {
                    "product": {
                        "id": "004F5510-77C3-4AF9-8E9B-30D916E7DF3A"
                    },
                    "color": "Mule Fawn",
                    "id": "98BCAD2D-27AC-4760-909F-AA0F649DB3FA",
                    "hex": "93522C",
                    "image": "boots-93522C",
                    "updatedAt": "2023-04-11T00:00:00Z",
                    "createdAt": "2023-04-11T00:00:00Z"
                }
            ],
            "id": "004F5510-77C3-4AF9-8E9B-30D916E7DF3A",
            "price": 4200,
            "discount": 0,
            "updatedAt": "2023-04-11T00:00:00Z",
            "sizes": [
                "7",
                "8",
                "9",
                "10"
            ],
            "description": "Our boots feature a comfortable footbed and a non-slip sole that provides ample traction on any terrain, ensuring that you can hike or walk with confidence and ease.",
            "name": "Boots"
        },
        {
            "category": "footwear",
            "variants": [
                {
                    "product": {
                        "id": "9AB245F8-3EFD-4E66-9C0E-BF5DF6FCD3C8"
                    },
                    "color": "Lotus",
                    "id": "6D5E3834-5735-4747-A2A8-A57293D79847",
                    "hex": "783434",
                    "image": "sneakers-783434",
                    "updatedAt": "2023-04-11T00:00:00Z",
                    "createdAt": "2023-04-11T00:00:00Z"
                },
                {
                    "product": {
                        "id": "9AB245F8-3EFD-4E66-9C0E-BF5DF6FCD3C8"
                    },
                    "color": "Scorpion",
                    "id": "1F94506C-1B91-4BA2-9FB6-FA1DC47475AB",
                    "hex": "5C5858",
                    "image": "sneakers-5C5858",
                    "updatedAt": "2023-04-11T00:00:00Z",
                    "createdAt": "2023-04-11T00:00:00Z"
                }
            ],
            "id": "9AB245F8-3EFD-4E66-9C0E-BF5DF6FCD3C8",
            "price": 6200,
            "discount": 0,
            "updatedAt": "2023-04-11T00:00:00Z",
            "sizes": [
                "9",
                "10",
                "11",
                "12"
            ],
            "description": "Introducing our stylish and trendy sneakers, featuring a bold and eye-catching star design! Crafted from high-quality materials, such as durable canvas or soft leather, our sneakers are designed to be both comfortable and stylish.",
            "name": "Sneakers"
        },
        {
            "category": "footwear",
            "variants": [
                {
                    "product": {
                        "id": "10D6747B-3D57-4182-A2F1-D679E8ED6B82"
                    },
                    "color": "Amethyst",
                    "id": "B96339AA-A4F3-42D2-9D11-4BB8F593A341",
                    "hex": "9666C6",
                    "image": "runningshoes-9666C6",
                    "updatedAt": "2023-04-11T00:00:00Z",
                    "createdAt": "2023-04-11T00:00:00Z"
                },
                {
                    "product": {
                        "id": "10D6747B-3D57-4182-A2F1-D679E8ED6B82"
                    },
                    "color": "Chestnut Rose",
                    "id": "9C8AA410-80DF-4019-A880-DCD13EEDC16C",
                    "hex": "CC4F60",
                    "image": "runningshoes-CC4F60",
                    "updatedAt": "2023-04-11T00:00:00Z",
                    "createdAt": "2023-04-11T00:00:00Z"
                },
                {
                    "product": {
                        "id": "10D6747B-3D57-4182-A2F1-D679E8ED6B82"
                    },
                    "color": "Vista Blue",
                    "id": "938B1173-9372-4851-9DD1-376C5449BCE4",
                    "hex": "9AD7B6",
                    "image": "runningshoes-9AD7B6",
                    "updatedAt": "2023-04-11T00:00:00Z",
                    "createdAt": "2023-04-11T00:00:00Z"
                }
            ],
            "id": "10D6747B-3D57-4182-A2F1-D679E8ED6B82",
            "price": 5900,
            "discount": 0,
            "updatedAt": "2023-04-11T00:00:00Z",
            "sizes": [
                "8",
                "9",
                "10",
                "11"
            ],
            "description": "Our running shoes are designed for comfort and performance, with a cushioned footbed and a supportive sole that provides ample arch support and shock absorption.",
            "name": "Running Shoes"
        }
    ]
    """
}
