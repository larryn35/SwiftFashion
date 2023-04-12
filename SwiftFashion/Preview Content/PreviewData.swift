//
//  PreviewData.swift
//  SwiftFashion
//
//  Created by Larry Nguyen on 4/11/23.
//
//  swiftlint:disable all


import Foundation

struct PreviewData {
    static func products() -> [Product] {
        let jsonData = productJSON.data(using: .utf8)!
        let products = try? JSONDecoder().decode([Product].self, from: jsonData)
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
                        "id": "52256004-55E2-4042-A3B6-ACB8F139E86B"
                    },
                    "id": "0276AF58-2637-4650-93C7-76D4A6BA3EF2",
                    "hex": "9E8A8A",
                    "image": "tshirt-9E8A8A",
                    "updatedAt": "2023-04-08T00:00:00Z",
                    "createdAt": "2023-04-08T00:00:00Z"
                },
                {
                    "color": "Tan Hide",
                    "product": {
                        "id": "52256004-55E2-4042-A3B6-ACB8F139E86B"
                    },
                    "id": "E6448A99-C879-4AD9-BD80-140F1F05AB6C",
                    "hex": "FC9C5E",
                    "image": "tshirt-FC9C5E",
                    "updatedAt": "2023-04-08T00:00:00Z",
                    "createdAt": "2023-04-08T00:00:00Z"
                },
                {
                    "color": "Pickled Bluewood",
                    "product": {
                        "id": "52256004-55E2-4042-A3B6-ACB8F139E86B"
                    },
                    "id": "7FB4D081-470E-4A9B-96A2-44924B3D0D24",
                    "hex": "35455E",
                    "image": "tshirt-35455E",
                    "updatedAt": "2023-04-08T00:00:00Z",
                    "createdAt": "2023-04-08T00:00:00Z"
                }
            ],
            "id": "52256004-55E2-4042-A3B6-ACB8F139E86B",
            "price": 1200,
            "discount": 240,
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
                    "color": "Scooter",
                    "product": {
                        "id": "7CF81866-61C0-423D-AF80-E1D0410E121A"
                    },
                    "id": "933CA3DA-9653-4C3B-84A9-068D6084175D",
                    "hex": "3DBADA",
                    "image": "tanktop-3DBADA",
                    "updatedAt": "2023-04-08T00:00:00Z",
                    "createdAt": "2023-04-08T00:00:00Z"
                },
                {
                    "color": "Emerald",
                    "product": {
                        "id": "7CF81866-61C0-423D-AF80-E1D0410E121A"
                    },
                    "id": "24894387-876B-4D44-9D0B-FCEAA5505A02",
                    "hex": "4EC67C",
                    "image": "tanktop-4EC67C",
                    "updatedAt": "2023-04-08T00:00:00Z",
                    "createdAt": "2023-04-08T00:00:00Z"
                },
                {
                    "color": "Sunglow",
                    "product": {
                        "id": "7CF81866-61C0-423D-AF80-E1D0410E121A"
                    },
                    "id": "EDF34CF8-932E-491A-B78C-26A6AC26F68A",
                    "hex": "FDD54F",
                    "image": "tanktop-FDD54F",
                    "updatedAt": "2023-04-08T00:00:00Z",
                    "createdAt": "2023-04-08T00:00:00Z"
                }
            ],
            "id": "7CF81866-61C0-423D-AF80-E1D0410E121A",
            "price": 800,
            "discount": 160,
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
                    "color": "Emerald",
                    "product": {
                        "id": "25AB8D0B-4062-4612-A4F1-A6806DC5897E"
                    },
                    "id": "2D9FC4A7-ABAE-4573-978E-F05EDE6DD1B0",
                    "hex": "4EC67C",
                    "image": "polo-4EC67C",
                    "updatedAt": "2023-04-08T00:00:00Z",
                    "createdAt": "2023-04-08T00:00:00Z"
                },
                {
                    "color": "Abbey",
                    "product": {
                        "id": "25AB8D0B-4062-4612-A4F1-A6806DC5897E"
                    },
                    "id": "82269049-3023-4463-A3D7-090320F409A8",
                    "hex": "44464A",
                    "image": "polo-44464A",
                    "updatedAt": "2023-04-08T00:00:00Z",
                    "createdAt": "2023-04-08T00:00:00Z"
                }
            ],
            "id": "25AB8D0B-4062-4612-A4F1-A6806DC5897E",
            "price": 1600,
            "discount": 320,
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
                        "id": "B0DA5875-9682-442C-841B-3BEB3ED8431D"
                    },
                    "id": "ED181BA7-7D18-4EDB-B4C9-3168F9B95F65",
                    "hex": "65676C",
                    "image": "turtleneck-65676C",
                    "updatedAt": "2023-04-08T00:00:00Z",
                    "createdAt": "2023-04-08T00:00:00Z"
                },
                {
                    "color": "Blueberry",
                    "product": {
                        "id": "B0DA5875-9682-442C-841B-3BEB3ED8431D"
                    },
                    "id": "EA6739D3-F434-4434-B033-21A5102636DF",
                    "hex": "745EFC",
                    "image": "turtleneck-745EFC",
                    "updatedAt": "2023-04-08T00:00:00Z",
                    "createdAt": "2023-04-08T00:00:00Z"
                },
                {
                    "color": "Ghost",
                    "product": {
                        "id": "B0DA5875-9682-442C-841B-3BEB3ED8431D"
                    },
                    "id": "017BE9BA-B844-4198-8ACB-BD2F341023AD",
                    "hex": "CAC8D8",
                    "image": "turtleneck-CAC8D8",
                    "updatedAt": "2023-04-08T00:00:00Z",
                    "createdAt": "2023-04-08T00:00:00Z"
                }
            ],
            "id": "B0DA5875-9682-442C-841B-3BEB3ED8431D",
            "price": 2800,
            "discount": 560,
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
                        "id": "C2E79AAB-C86D-4827-A193-0943F324AC67"
                    },
                    "id": "53C3F979-C728-4E42-9201-29383D79B00B",
                    "hex": "CC4F60",
                    "image": "jersey-CC4F60",
                    "updatedAt": "2023-04-08T00:00:00Z",
                    "createdAt": "2023-04-08T00:00:00Z"
                },
                {
                    "color": "Indigo",
                    "product": {
                        "id": "C2E79AAB-C86D-4827-A193-0943F324AC67"
                    },
                    "id": "B9F21712-6367-4690-8A1C-DCF9525D3AA2",
                    "hex": "4F72CC",
                    "image": "jersey-4F72CC",
                    "updatedAt": "2023-04-08T00:00:00Z",
                    "createdAt": "2023-04-08T00:00:00Z"
                },
                {
                    "color": "Fuchsia",
                    "product": {
                        "id": "C2E79AAB-C86D-4827-A193-0943F324AC67"
                    },
                    "id": "0D81C76F-23C8-4A05-8258-548ED67E8EA5",
                    "hex": "C94FCC",
                    "image": "jersey-C94FCC",
                    "updatedAt": "2023-04-08T00:00:00Z",
                    "createdAt": "2023-04-08T00:00:00Z"
                },
                {
                    "color": "Persian Plum",
                    "product": {
                        "id": "C2E79AAB-C86D-4827-A193-0943F324AC67"
                    },
                    "id": "44EF11D2-48BE-40A4-9DC8-C10BEB2307E8",
                    "hex": "661A24",
                    "image": "jersey-661A24",
                    "updatedAt": "2023-04-08T00:00:00Z",
                    "createdAt": "2023-04-08T00:00:00Z"
                }
            ],
            "id": "C2E79AAB-C86D-4827-A193-0943F324AC67",
            "price": 1600,
            "discount": 320,
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
                        "id": "B2F81337-9BA4-42F7-9019-3DDFB35ECF51"
                    },
                    "id": "3EEB1404-F536-42A0-989C-89287CFA710C",
                    "hex": "65676C",
                    "image": "signaturepolo-65676C",
                    "updatedAt": "2023-04-08T00:00:00Z",
                    "createdAt": "2023-04-08T00:00:00Z"
                },
                {
                    "color": "Kashmir Blue",
                    "product": {
                        "id": "B2F81337-9BA4-42F7-9019-3DDFB35ECF51"
                    },
                    "id": "65D694F2-C8F9-4563-AB3A-FC21CFC704E0",
                    "hex": "526594",
                    "image": "signaturepolo-526594",
                    "updatedAt": "2023-04-08T00:00:00Z",
                    "createdAt": "2023-04-08T00:00:00Z"
                }
            ],
            "id": "B2F81337-9BA4-42F7-9019-3DDFB35ECF51",
            "price": 3200,
            "discount": 640,
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
                        "id": "97DF505C-A983-4E54-A354-DAC6E954F4FB"
                    },
                    "id": "D117058E-5359-4B88-ABA6-90C1CBEFC713",
                    "hex": "4EC67C",
                    "image": "atheletictank-4EC67C",
                    "updatedAt": "2023-04-08T00:00:00Z",
                    "createdAt": "2023-04-08T00:00:00Z"
                },
                {
                    "color": "Purple Heart",
                    "product": {
                        "id": "97DF505C-A983-4E54-A354-DAC6E954F4FB"
                    },
                    "id": "4A331743-B05D-4904-8AD3-77CF9FDA7F69",
                    "hex": "6D4EC6",
                    "image": "atheletictank-6D4EC6",
                    "updatedAt": "2023-04-08T00:00:00Z",
                    "createdAt": "2023-04-08T00:00:00Z"
                },
                {
                    "color": "Mine Shaft",
                    "product": {
                        "id": "97DF505C-A983-4E54-A354-DAC6E954F4FB"
                    },
                    "id": "2C623394-2E03-4318-9094-561E370EEC2F",
                    "hex": "303030",
                    "image": "atheletictank-303030",
                    "updatedAt": "2023-04-08T00:00:00Z",
                    "createdAt": "2023-04-08T00:00:00Z"
                },
                {
                    "color": "Flamenco",
                    "product": {
                        "id": "97DF505C-A983-4E54-A354-DAC6E954F4FB"
                    },
                    "id": "5D84E423-D270-4FC1-9874-86DB4982BB60",
                    "hex": "FE800C",
                    "image": "atheletictank-FE800C",
                    "updatedAt": "2023-04-08T00:00:00Z",
                    "createdAt": "2023-04-08T00:00:00Z"
                }
            ],
            "id": "97DF505C-A983-4E54-A354-DAC6E954F4FB",
            "price": 2000,
            "discount": 400,
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
                        "id": "4042D99D-A825-4D96-91A8-FA8237EFB282"
                    },
                    "id": "5A317CAF-1C7E-41C4-B9DD-F96E3C80C2B5",
                    "hex": "CC4F60",
                    "image": "sweater-CC4F60",
                    "updatedAt": "2023-04-08T00:00:00Z",
                    "createdAt": "2023-04-08T00:00:00Z"
                },
                {
                    "color": "Pastel Green",
                    "product": {
                        "id": "4042D99D-A825-4D96-91A8-FA8237EFB282"
                    },
                    "id": "F495BFDA-0CD7-4569-985B-7C59548654F0",
                    "hex": "7EE288",
                    "image": "sweater-7EE288",
                    "updatedAt": "2023-04-08T00:00:00Z",
                    "createdAt": "2023-04-08T00:00:00Z"
                }
            ],
            "id": "4042D99D-A825-4D96-91A8-FA8237EFB282",
            "price": 2500,
            "discount": 500,
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
                        "id": "773936D3-F14F-4C41-A3A5-EDB2C7FCD287"
                    },
                    "id": "969ABB48-13F9-46A7-9281-A71CDBE82694",
                    "hex": "D83E63",
                    "image": "swimmingshorts-D83E63",
                    "updatedAt": "2023-04-08T00:00:00Z",
                    "createdAt": "2023-04-08T00:00:00Z"
                },
                {
                    "color": "Turquoise Pearl",
                    "product": {
                        "id": "773936D3-F14F-4C41-A3A5-EDB2C7FCD287"
                    },
                    "id": "E5A2243F-C0FE-4673-A48D-D7F6656524BA",
                    "hex": "3EBBD8",
                    "image": "swimmingshorts-3EBBD8",
                    "updatedAt": "2023-04-08T00:00:00Z",
                    "createdAt": "2023-04-08T00:00:00Z"
                }
            ],
            "id": "773936D3-F14F-4C41-A3A5-EDB2C7FCD287",
            "price": 900,
            "discount": 0,
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
                        "id": "8B2F3C43-4328-4E79-8E2F-57BBA6BBE5A1"
                    },
                    "id": "8D7FDBF0-F5B7-42F6-9BB1-AEDD02F962F7",
                    "hex": "8D746F",
                    "image": "shorts-8D746F",
                    "updatedAt": "2023-04-08T00:00:00Z",
                    "createdAt": "2023-04-08T00:00:00Z"
                },
                {
                    "color": "Mineral Green",
                    "product": {
                        "id": "8B2F3C43-4328-4E79-8E2F-57BBA6BBE5A1"
                    },
                    "id": "C626EFE2-AE09-4421-A12A-B94B45B0830B",
                    "hex": "455E55",
                    "image": "shorts-455E55",
                    "updatedAt": "2023-04-08T00:00:00Z",
                    "createdAt": "2023-04-08T00:00:00Z"
                }
            ],
            "id": "8B2F3C43-4328-4E79-8E2F-57BBA6BBE5A1",
            "price": 1200,
            "discount": 0,
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
                        "id": "A307C8A6-50FA-4EFD-AC93-CF23C65B56B6"
                    },
                    "id": "85AF6BAA-E502-419E-8E8B-A6BD2675DE5E",
                    "hex": "314077",
                    "image": "stripedpants-314077",
                    "updatedAt": "2023-04-08T00:00:00Z",
                    "createdAt": "2023-04-08T00:00:00Z"
                },
                {
                    "color": "Spectra",
                    "product": {
                        "id": "A307C8A6-50FA-4EFD-AC93-CF23C65B56B6"
                    },
                    "id": "98B01E40-A797-42AD-825F-9044E093139E",
                    "hex": "2B5853",
                    "image": "stripedpants-2B5853",
                    "updatedAt": "2023-04-08T00:00:00Z",
                    "createdAt": "2023-04-08T00:00:00Z"
                },
                {
                    "color": "Roof Terracotta",
                    "product": {
                        "id": "A307C8A6-50FA-4EFD-AC93-CF23C65B56B6"
                    },
                    "id": "459F3540-5032-4F3F-83BD-2CA5D30B05C9",
                    "hex": "AD2020",
                    "image": "stripedpants-AD2020",
                    "updatedAt": "2023-04-08T00:00:00Z",
                    "createdAt": "2023-04-08T00:00:00Z"
                }
            ],
            "id": "A307C8A6-50FA-4EFD-AC93-CF23C65B56B6",
            "price": 1800,
            "discount": 0,
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
                        "id": "89B15065-443B-4761-846A-86338E7759D7"
                    },
                    "id": "B16FA45F-37DC-43AA-A74B-C3A490C6895C",
                    "hex": "5F86A1",
                    "image": "fittedpants-5F86A1",
                    "updatedAt": "2023-04-08T00:00:00Z",
                    "createdAt": "2023-04-08T00:00:00Z"
                },
                {
                    "color": "Amethyst",
                    "product": {
                        "id": "89B15065-443B-4761-846A-86338E7759D7"
                    },
                    "id": "D3CF1A40-0A53-4CEC-95BF-D503660864B1",
                    "hex": "9368C9",
                    "image": "fittedpants-9368C9",
                    "updatedAt": "2023-04-08T00:00:00Z",
                    "createdAt": "2023-04-08T00:00:00Z"
                }
            ],
            "id": "89B15065-443B-4761-846A-86338E7759D7",
            "price": 2800,
            "discount": 0,
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
                        "id": "4C41E4E5-47EE-409E-AAAE-4CDED19C83B4"
                    },
                    "id": "6F9DEA6E-14BA-4E55-A1B9-B3C1C9CE3269",
                    "hex": "3DBADA",
                    "image": "sweatpants-3DBADA",
                    "updatedAt": "2023-04-08T00:00:00Z",
                    "createdAt": "2023-04-08T00:00:00Z"
                },
                {
                    "color": "Pastel Green",
                    "product": {
                        "id": "4C41E4E5-47EE-409E-AAAE-4CDED19C83B4"
                    },
                    "id": "D8490987-6AD7-4B7E-9070-788FA0DF592B",
                    "hex": "82D67D",
                    "image": "sweatpants-82D67D",
                    "updatedAt": "2023-04-08T00:00:00Z",
                    "createdAt": "2023-04-08T00:00:00Z"
                },
                {
                    "color": "Antique Brass",
                    "product": {
                        "id": "4C41E4E5-47EE-409E-AAAE-4CDED19C83B4"
                    },
                    "id": "F5004495-764B-42FC-B8FF-E5C182D5340D",
                    "hex": "CC9461",
                    "image": "sweatpants-CC9461",
                    "updatedAt": "2023-04-08T00:00:00Z",
                    "createdAt": "2023-04-08T00:00:00Z"
                }
            ],
            "id": "4C41E4E5-47EE-409E-AAAE-4CDED19C83B4",
            "price": 1400,
            "discount": 0,
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
                        "id": "44191A22-F732-4FB8-A9DE-4F05269BC951"
                    },
                    "id": "835FE8A0-279F-4FFB-A221-47AACCB5E0FB",
                    "hex": "5E563C",
                    "image": "pants-5E563C",
                    "updatedAt": "2023-04-08T00:00:00Z",
                    "createdAt": "2023-04-08T00:00:00Z"
                },
                {
                    "color": "Black Coral Pearl",
                    "product": {
                        "id": "44191A22-F732-4FB8-A9DE-4F05269BC951"
                    },
                    "id": "27CF4CB3-B072-4453-9240-1E449546BBD4",
                    "hex": "555D68",
                    "image": "pants-555D68",
                    "updatedAt": "2023-04-08T00:00:00Z",
                    "createdAt": "2023-04-08T00:00:00Z"
                },
                {
                    "color": "Kashmir Blue",
                    "product": {
                        "id": "44191A22-F732-4FB8-A9DE-4F05269BC951"
                    },
                    "id": "FED36C87-3085-48A4-80DD-706574188724",
                    "hex": "496998",
                    "image": "pants-496998",
                    "updatedAt": "2023-04-08T00:00:00Z",
                    "createdAt": "2023-04-08T00:00:00Z"
                },
                {
                    "color": "Pine",
                    "product": {
                        "id": "44191A22-F732-4FB8-A9DE-4F05269BC951"
                    },
                    "id": "1CE7D0D1-6BD2-4F6D-8D6C-BBE82F92A3FC",
                    "hex": "4AA483",
                    "image": "pants-4AA483",
                    "updatedAt": "2023-04-08T00:00:00Z",
                    "createdAt": "2023-04-08T00:00:00Z"
                }
            ],
            "id": "44191A22-F732-4FB8-A9DE-4F05269BC951",
            "price": 2200,
            "discount": 0,
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
                        "id": "69CEB8EE-2B30-473E-B956-2FE86F52D9C1"
                    },
                    "id": "2AF4E2FA-3C26-498F-B941-8758C596F44A",
                    "hex": "4EC67C",
                    "image": "sundress-4EC67C",
                    "updatedAt": "2023-04-08T00:00:00Z",
                    "createdAt": "2023-04-08T00:00:00Z"
                },
                {
                    "color": "Bright Sun",
                    "product": {
                        "id": "69CEB8EE-2B30-473E-B956-2FE86F52D9C1"
                    },
                    "id": "433024EC-0104-4FF8-8ABA-5AF363CF0F22",
                    "hex": "FFD53E",
                    "image": "sundress-FFD53E",
                    "updatedAt": "2023-04-08T00:00:00Z",
                    "createdAt": "2023-04-08T00:00:00Z"
                }
            ],
            "id": "69CEB8EE-2B30-473E-B956-2FE86F52D9C1",
            "price": 2000,
            "discount": 0,
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
                        "id": "C6EDEF70-CE71-4AA7-9B7C-324BBF00AD1C"
                    },
                    "id": "FFFE1C73-160C-4AB3-9393-7DB3E3B60827",
                    "hex": "94A5FF",
                    "image": "longsleevedress-94A5FF",
                    "updatedAt": "2023-04-08T00:00:00Z",
                    "createdAt": "2023-04-08T00:00:00Z"
                },
                {
                    "color": "Bright Sun",
                    "product": {
                        "id": "C6EDEF70-CE71-4AA7-9B7C-324BBF00AD1C"
                    },
                    "id": "34516489-C4A3-46EA-9E97-54962498E015",
                    "hex": "FFD53E",
                    "image": "longsleevedress-FFD53E",
                    "updatedAt": "2023-04-08T00:00:00Z",
                    "createdAt": "2023-04-08T00:00:00Z"
                }
            ],
            "id": "C6EDEF70-CE71-4AA7-9B7C-324BBF00AD1C",
            "price": 2600,
            "discount": 0,
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
                        "id": "547149E5-EC2C-4BC6-B4E8-5EA162FBF0DD"
                    },
                    "id": "C2A70F88-344F-44C0-8047-510EEF08EC14",
                    "hex": "E0E0E0",
                    "image": "dress-E0E0E0",
                    "updatedAt": "2023-04-08T00:00:00Z",
                    "createdAt": "2023-04-08T00:00:00Z"
                },
                {
                    "color": "Geraldine",
                    "product": {
                        "id": "547149E5-EC2C-4BC6-B4E8-5EA162FBF0DD"
                    },
                    "id": "7C923544-FAF4-4F78-A5E7-0C06B7E7C534",
                    "hex": "FB9C87",
                    "image": "dress-FB9C87",
                    "updatedAt": "2023-04-08T00:00:00Z",
                    "createdAt": "2023-04-08T00:00:00Z"
                },
                {
                    "color": "Scooter",
                    "product": {
                        "id": "547149E5-EC2C-4BC6-B4E8-5EA162FBF0DD"
                    },
                    "id": "D8B1D733-BF88-4C1F-8A20-C28AC3519342",
                    "hex": "3DBADA",
                    "image": "dress-3DBADA",
                    "updatedAt": "2023-04-08T00:00:00Z",
                    "createdAt": "2023-04-08T00:00:00Z"
                }
            ],
            "id": "547149E5-EC2C-4BC6-B4E8-5EA162FBF0DD",
            "price": 2000,
            "discount": 0,
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
                        "id": "8D8F9724-4B6A-42AF-A876-3590579D3039"
                    },
                    "id": "1536BDE7-8F1B-4B8A-844D-CED8A7E01474",
                    "hex": "CB525F",
                    "image": "cocktaildress-CB525F",
                    "updatedAt": "2023-04-08T00:00:00Z",
                    "createdAt": "2023-04-08T00:00:00Z"
                },
                {
                    "color": "Butterfly Bush",
                    "product": {
                        "id": "8D8F9724-4B6A-42AF-A876-3590579D3039"
                    },
                    "id": "BC866D19-D7E4-4B16-8955-30BE4CFCE2F9",
                    "hex": "4F58A1",
                    "image": "cocktaildress-4F58A1",
                    "updatedAt": "2023-04-08T00:00:00Z",
                    "createdAt": "2023-04-08T00:00:00Z"
                },
                {
                    "color": "Cutty Sark",
                    "product": {
                        "id": "8D8F9724-4B6A-42AF-A876-3590579D3039"
                    },
                    "id": "EBBD6A8D-D553-4B5C-8DCA-349C8C9F9740",
                    "hex": "497673",
                    "image": "cocktaildress-497673",
                    "updatedAt": "2023-04-08T00:00:00Z",
                    "createdAt": "2023-04-08T00:00:00Z"
                }
            ],
            "id": "8D8F9724-4B6A-42AF-A876-3590579D3039",
            "price": 2200,
            "discount": 0,
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
                        "id": "ED5DAAB1-1152-4A79-8EB2-ADA0A0476AF5"
                    },
                    "id": "492A5DFF-51A9-4BC9-AC6B-C9B1CAD5952E",
                    "hex": "57C983",
                    "image": "lowtops-57C983",
                    "updatedAt": "2023-04-08T00:00:00Z",
                    "createdAt": "2023-04-08T00:00:00Z"
                },
                {
                    "color": "New Car",
                    "product": {
                        "id": "ED5DAAB1-1152-4A79-8EB2-ADA0A0476AF5"
                    },
                    "id": "C68AA49B-01D1-4A39-A938-37F777D3B8EE",
                    "hex": "215DB8",
                    "image": "lowtops-215DB8",
                    "updatedAt": "2023-04-08T00:00:00Z",
                    "createdAt": "2023-04-08T00:00:00Z"
                },
                {
                    "color": "Medium Purple",
                    "product": {
                        "id": "ED5DAAB1-1152-4A79-8EB2-ADA0A0476AF5"
                    },
                    "id": "E61BAD7D-264C-407F-9308-8F4E67AB0753",
                    "hex": "9251E3",
                    "image": "lowtops-9251E3",
                    "updatedAt": "2023-04-08T00:00:00Z",
                    "createdAt": "2023-04-08T00:00:00Z"
                }
            ],
            "id": "ED5DAAB1-1152-4A79-8EB2-ADA0A0476AF5",
            "price": 4200,
            "discount": 0,
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
                    "color": "Chambray",
                    "product": {
                        "id": "EF763A9B-99B1-4FD6-B187-BD6833D37136"
                    },
                    "id": "4F2D07A1-FC93-4A0B-BCEC-8C1726626659",
                    "hex": "3A3E99",
                    "image": "heels-3A3E99",
                    "updatedAt": "2023-04-08T00:00:00Z",
                    "createdAt": "2023-04-08T00:00:00Z"
                },
                {
                    "color": "Tall Poppy",
                    "product": {
                        "id": "EF763A9B-99B1-4FD6-B187-BD6833D37136"
                    },
                    "id": "3D49D88D-8313-4252-BEA7-FCE9A040484B",
                    "hex": "B42837",
                    "image": "heels-B42837",
                    "updatedAt": "2023-04-08T00:00:00Z",
                    "createdAt": "2023-04-08T00:00:00Z"
                }
            ],
            "id": "EF763A9B-99B1-4FD6-B187-BD6833D37136",
            "price": 6000,
            "discount": 0,
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
                    "color": "Irish Coffee",
                    "product": {
                        "id": "A0347FB8-8519-4B2C-8306-DCBAE21B704A"
                    },
                    "id": "B1746E30-73D0-48C3-AF68-526E63B27997",
                    "hex": "593B20",
                    "image": "dressshoes-593B20",
                    "updatedAt": "2023-04-08T00:00:00Z",
                    "createdAt": "2023-04-08T00:00:00Z"
                }
            ],
            "id": "A0347FB8-8519-4B2C-8306-DCBAE21B704A",
            "price": 5400,
            "discount": 0,
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
                        "id": "772202B7-18AB-4904-A3E2-952D73D8D70F"
                    },
                    "color": "Inchworm",
                    "id": "DA4E79F3-23E5-4B71-A22C-CA9ABCEC77C8",
                    "hex": "94EA76",
                    "image": "sandal-94EA76",
                    "updatedAt": "2023-04-08T00:00:00Z",
                    "createdAt": "2023-04-08T00:00:00Z"
                },
                {
                    "color": "Flamenco",
                    "product": {
                        "id": "772202B7-18AB-4904-A3E2-952D73D8D70F"
                    },
                    "id": "5FDC8F8D-1712-4F15-8625-B8DBEEE77C01",
                    "hex": "FE800C",
                    "image": "sandal-FE800C",
                    "updatedAt": "2023-04-08T00:00:00Z",
                    "createdAt": "2023-04-08T00:00:00Z"
                },
                {
                    "color": "Bright Sun",
                    "product": {
                        "id": "772202B7-18AB-4904-A3E2-952D73D8D70F"
                    },
                    "id": "7941E61B-1DF8-4860-953F-B42ED223755E",
                    "hex": "FFD53E",
                    "image": "sandal-FFD53E",
                    "updatedAt": "2023-04-08T00:00:00Z",
                    "createdAt": "2023-04-08T00:00:00Z"
                }
            ],
            "id": "772202B7-18AB-4904-A3E2-952D73D8D70F",
            "price": 2200,
            "discount": 0,
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
                    "color": "Scooter",
                    "product": {
                        "id": "D6F8A70D-442C-44AA-8465-926C75091EE5"
                    },
                    "id": "FD1E0DE6-1116-4725-8B32-E84ED34A0470",
                    "hex": "3DBADA",
                    "image": "rainboots-3DBADA",
                    "updatedAt": "2023-04-08T00:00:00Z",
                    "createdAt": "2023-04-08T00:00:00Z"
                },
                {
                    "color": "Bright Sun",
                    "product": {
                        "id": "D6F8A70D-442C-44AA-8465-926C75091EE5"
                    },
                    "id": "44A557C0-607E-4D06-B047-7E6CE65DD241",
                    "hex": "FFD53E",
                    "image": "rainboots-FFD53E",
                    "updatedAt": "2023-04-08T00:00:00Z",
                    "createdAt": "2023-04-08T00:00:00Z"
                },
                {
                    "color": "Flamingo",
                    "product": {
                        "id": "D6F8A70D-442C-44AA-8465-926C75091EE5"
                    },
                    "id": "E7811CF4-754D-4969-9163-26542267F804",
                    "hex": "EE5D3D",
                    "image": "rainboots-EE5D3D",
                    "updatedAt": "2023-04-08T00:00:00Z",
                    "createdAt": "2023-04-08T00:00:00Z"
                },
                {
                    "color": "Fuchsia",
                    "product": {
                        "id": "D6F8A70D-442C-44AA-8465-926C75091EE5"
                    },
                    "id": "B61D986E-9824-43FB-B683-26F8B4B96B12",
                    "hex": "C94FCC",
                    "image": "rainboots-C94FCC",
                    "updatedAt": "2023-04-08T00:00:00Z",
                    "createdAt": "2023-04-08T00:00:00Z"
                }
            ],
            "id": "D6F8A70D-442C-44AA-8465-926C75091EE5",
            "price": 2200,
            "discount": 0,
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
                    "color": "Emerald",
                    "product": {
                        "id": "33EA5AFA-AED9-413B-8295-2DAF9FC739FB"
                    },
                    "id": "523A6357-CD6B-4501-8986-8D467E13AFEB",
                    "hex": "4EC67C",
                    "image": "boots-4EC67C",
                    "updatedAt": "2023-04-08T00:00:00Z",
                    "createdAt": "2023-04-08T00:00:00Z"
                },
                {
                    "color": "Mule Fawn",
                    "product": {
                        "id": "33EA5AFA-AED9-413B-8295-2DAF9FC739FB"
                    },
                    "id": "BA327BE4-A1DA-4495-976D-15163ECE7E51",
                    "hex": "93522C",
                    "image": "boots-93522C",
                    "updatedAt": "2023-04-08T00:00:00Z",
                    "createdAt": "2023-04-08T00:00:00Z"
                }
            ],
            "id": "33EA5AFA-AED9-413B-8295-2DAF9FC739FB",
            "price": 4200,
            "discount": 0,
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
                    "color": "Lotus",
                    "product": {
                        "id": "2481DEEE-D0F3-42B1-BF9D-EAA2E2192A25"
                    },
                    "id": "85E43AEC-D6AA-4B46-948F-248DFE546A34",
                    "hex": "783434",
                    "image": "sneakers-783434",
                    "updatedAt": "2023-04-08T00:00:00Z",
                    "createdAt": "2023-04-08T00:00:00Z"
                },
                {
                    "color": "Scorpion",
                    "product": {
                        "id": "2481DEEE-D0F3-42B1-BF9D-EAA2E2192A25"
                    },
                    "id": "75F9A11C-3ADF-4279-A20D-F187E64C2F39",
                    "hex": "5C5858",
                    "image": "sneakers-5C5858",
                    "updatedAt": "2023-04-08T00:00:00Z",
                    "createdAt": "2023-04-08T00:00:00Z"
                }
            ],
            "id": "2481DEEE-D0F3-42B1-BF9D-EAA2E2192A25",
            "price": 6200,
            "discount": 0,
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
                    "color": "Amethyst",
                    "product": {
                        "id": "4DC70D00-4EBC-4477-B1EE-96F66C8095E6"
                    },
                    "id": "BE8F21D5-6CD5-4FF3-BA11-4D2D0111CF1B",
                    "hex": "9666C6",
                    "image": "runningshoes-9666C6",
                    "updatedAt": "2023-04-08T00:00:00Z",
                    "createdAt": "2023-04-08T00:00:00Z"
                },
                {
                    "color": "Chestnut Rose",
                    "product": {
                        "id": "4DC70D00-4EBC-4477-B1EE-96F66C8095E6"
                    },
                    "id": "9A6092E2-7609-4721-9D06-6B854F767244",
                    "hex": "CC4F60",
                    "image": "runningshoes-CC4F60",
                    "updatedAt": "2023-04-08T00:00:00Z",
                    "createdAt": "2023-04-08T00:00:00Z"
                },
                {
                    "color": "Vista Blue",
                    "product": {
                        "id": "4DC70D00-4EBC-4477-B1EE-96F66C8095E6"
                    },
                    "id": "40F2E685-B77F-4FFD-87D7-499832E26ACF",
                    "hex": "9AD7B6",
                    "image": "runningshoes-9AD7B6",
                    "updatedAt": "2023-04-08T00:00:00Z",
                    "createdAt": "2023-04-08T00:00:00Z"
                }
            ],
            "id": "4DC70D00-4EBC-4477-B1EE-96F66C8095E6",
            "price": 5900,
            "discount": 0,
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
