-- =============================================
-- Seed Data: Categories and Products
-- =============================================

INSERT INTO categories (name) VALUES
	('Backpacks'),
	('Tents'),
	('Sleeping Bags'),
	('Sleeping Pads'),
	('Camp Cookware'),
	('Water Bottles'),
	('Water Filters'),
	('Headlamps'),
	('Lanterns'),
	('Hiking Poles'),
	('First Aid'),
	('Navigation'),
	('Outdoor Kitchen'),
	('Camp Furniture'),
	('Climbing Gear'),
	('Trail Tools'),
	('Coolers'),
	('Fire Starters'),
	('Dry Bags'),
	('Repair Kits');

INSERT INTO products (name, description, price, category_id, image_url, featured) VALUES
	(
		'Summit 45L Pack',
		'Lightweight 45L hiking pack with ventilated back panel and removable rain cover.',
		129.99,
		(SELECT id FROM categories WHERE name = 'Backpacks'),
		'/images/products/summit-45l-pack.jpg',
		TRUE
	),
	(
		'Ridgeline 2P Tent',
		'Freestanding two-person tent with aluminum poles and full-coverage fly.',
		219.00,
		(SELECT id FROM categories WHERE name = 'Tents'),
		'/images/products/ridgeline-2p-tent.jpg',
		TRUE
	),
	(
		'Boreal 20F Sleeping Bag',
		'Synthetic insulation sleeping bag rated to 20F with draft collar.',
		149.50,
		(SELECT id FROM categories WHERE name = 'Sleeping Bags'),
		'/images/products/boreal-20f-bag.jpg',
		FALSE
	),
	(
		'Strata Air Pad',
		'Ultralight inflatable sleeping pad with integrated pump sack.',
		89.95,
		(SELECT id FROM categories WHERE name = 'Sleeping Pads'),
		'/images/products/strata-air-pad.jpg',
		FALSE
	),
	(
		'TrailChef Cookset',
		'Two-pot anodized aluminum cookset with nesting bowls and lid.',
		64.00,
		(SELECT id FROM categories WHERE name = 'Camp Cookware'),
		'/images/products/trailchef-cookset.jpg',
		FALSE
	),
	(
		'Canyon 32oz Bottle',
		'Insulated stainless steel bottle keeps drinks cold for 24 hours.',
		29.95,
		(SELECT id FROM categories WHERE name = 'Water Bottles'),
		'/images/products/canyon-32oz-bottle.jpg',
		TRUE
	),
	(
		'StreamGuard Filter',
		'Compact water filter removes bacteria and protozoa for backcountry use.',
		54.99,
		(SELECT id FROM categories WHERE name = 'Water Filters'),
		'/images/products/streamguard-filter.jpg',
		FALSE
	),
	(
		'Aurora 300 Headlamp',
		'300-lumen headlamp with red mode and USB-C rechargeable battery.',
		39.00,
		(SELECT id FROM categories WHERE name = 'Headlamps'),
		'/images/products/aurora-300-headlamp.jpg',
		TRUE
	),
	(
		'Beacon Camp Lantern',
		'Collapsible LED lantern with warm glow and 48-hour runtime.',
		44.50,
		(SELECT id FROM categories WHERE name = 'Lanterns'),
		'/images/products/beacon-lantern.jpg',
		FALSE
	),
	(
		'Summit Trek Poles',
		'Carbon fiber trekking poles with cork grips and quick locks.',
		119.00,
		(SELECT id FROM categories WHERE name = 'Hiking Poles'),
		'/images/products/summit-trek-poles.jpg',
		FALSE
	),
	(
		'Alpine First Aid Kit',
		'Adventure-ready first aid kit with organized compartments.',
		34.00,
		(SELECT id FROM categories WHERE name = 'First Aid'),
		'/images/products/alpine-first-aid-kit.jpg',
		FALSE
	),
	(
		'Trail Compass Pro',
		'Liquid-filled compass with declination adjustment and mirror.',
		27.50,
		(SELECT id FROM categories WHERE name = 'Navigation'),
		'/images/products/trail-compass-pro.jpg',
		FALSE
	),
	(
		'Camp Flame Stove',
		'Compact canister stove with quick ignition and windscreen.',
		52.00,
		(SELECT id FROM categories WHERE name = 'Outdoor Kitchen'),
		'/images/products/camp-flame-stove.jpg',
		TRUE
	),
	(
		'Pinecrest Camp Chair',
		'Folding camp chair with mesh back and cup holder.',
		39.99,
		(SELECT id FROM categories WHERE name = 'Camp Furniture'),
		'/images/products/pinecrest-chair.jpg',
		FALSE
	),
	(
		'Granite Climb Harness',
		'Adjustable climbing harness with gear loops and padded waist.',
		79.00,
		(SELECT id FROM categories WHERE name = 'Climbing Gear'),
		'/images/products/granite-harness.jpg',
		FALSE
	),
	(
		'TrailFix Multi-Tool',
		'Pocket multi-tool with knife, pliers, and screwdriver bits.',
		24.95,
		(SELECT id FROM categories WHERE name = 'Trail Tools'),
		'/images/products/trailfix-multitool.jpg',
		FALSE
	),
	(
		'Glacier 45 Cooler',
		'Rotomolded cooler keeps ice for up to 4 days.',
		189.00,
		(SELECT id FROM categories WHERE name = 'Coolers'),
		'/images/products/glacier-45-cooler.jpg',
		TRUE
	),
	(
		'SparkPath Fire Starter',
		'Ferro rod fire starter with striker and lanyard.',
		14.99,
		(SELECT id FROM categories WHERE name = 'Fire Starters'),
		'/images/products/sparkpath-fire-starter.jpg',
		FALSE
	),
	(
		'Drift 15L Dry Bag',
		'Waterproof roll-top dry bag for river and rain protection.',
		18.00,
		(SELECT id FROM categories WHERE name = 'Dry Bags'),
		'/images/products/drift-15l-drybag.jpg',
		FALSE
	),
	(
		'Field Repair Kit',
		'Patch kit for tents, pads, and inflatables with adhesive backing.',
		12.50,
		(SELECT id FROM categories WHERE name = 'Repair Kits'),
		'/images/products/field-repair-kit.jpg',
		FALSE
	);

INSERT INTO images (url, description) VALUES 
('https://pixabay.com/photos/mountain-person-lake-switzerland-5360913/', 'mountain, person, lake image'),
('https://pixabay.com/photos/mountain-climbing-5-dragon-peak-2124113/', 'mountain climbing, 5 dragon peak, the chubu sangaku national park, japan, snow, snow mountain, nature, summit, cold, wind, climbers, altitude, winter mountaineering, landscape, winter, mountain, peak image'),
('https://pixabay.com/photos/peak-summit-mountains-5645235/', 'peak, summit, mountains, nature, snow mountains, alps, alpine, mountain range, mountain landscape, mountainous, landscape, snow, clouds, switzerland image'),
('https://unsplash.com/photos/person-carrying-yellow-and-black-backpack-walking-between-green-plants-UVyOfX3v0Ls', 'hiker, backpack, green plants, grass, woman, summer, mountains, outdoor, grass, hiking, adventure, colorado, backpack, hat, explore, hiker, follow, nature, travel, life image'),
('https://unsplash.com/photos/person-in-green-jacket-walking-on-pathway-during-daytime-Np22XKv8_nA', 'person, green jacket, pathway, mountains, explore, hike, human, green, photography, photo, hiking, usa, walking, path, outdoors, mountain range, trail, peak, slope, port angeles image'),
('https://unsplash.com/photos/person-in-blue-jacket-and-black-pants-walking-on-green-grass-field-during-daytime-Cu5BNBDKi5w', 'human, road, photography, grey, photo, scenery, hiking, adventure, walking, rock, path, outdoors, mountain range, colorado, trail, wilderness, peak, slope, leisure activities image'),
('https://unsplash.com/photos/man-walking-on-walkway-facing-mountains-iiVpZF2f9nM', 'running, run, runner, trail, rocky mountains, green mountains, hiking trail, summer mountains, rockies, trail runner, mountain runner, human, blue, land, road, plant, grass, scenery, hiking, field image'),
('https://unsplash.com/photos/person-holding-mug-qkMQ5N2d9aY', 'person, holding, mug, coffee, tea, hands, warm, cozy, outdoors, nature, relaxation, morning, camping, adventure, france, french alps, drink, forest, trees, peaceful, serenity, lifestyle image'),
('https://pixabay.com/photos/camp-camping-campsite-tent-2650359/', 'camp, camping, campsite, tent, mountains, iceland, scenic view, landscape, adventure, nature, outdoors image');

