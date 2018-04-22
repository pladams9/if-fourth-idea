"A Fourth Idea" by pladams9

Part 0

Use DICT_WORD_SIZE of 16.

The story headline is "An Adventure Essay".

After printing the banner text, say "[line break][bold type]CHAPTER III[line break][italic type]Three things only have been discovered of that which concerns the inner consciousness since before written history began. Three things only in twelve thousand written, or sculptured, years, and in the dumb, dim time before then. Three ideas the Cavemen primeval wrested from the unknown, the night which is round us still in daylight—the existence of the soul, immortality, the deity. These things found, prayer followed as a sequential result. Since then nothing further has been found in all the twelve thousand years, as if men had been satisfied and had found these to suffice. They do not suffice me. I desire to advance further, and to wrest a fourth, and even still more than a fourth, from the darkness of thought. I want more ideas of soul-life. I am certain that there are more yet to be found."


Part 1 - Land of the Living

Chapter 1 - The Hills

Section 1 - Hills

Hills is a room. "You are in a landscape of rolling green hills.[paragraph break]Some woods are to the west.[line break]There are hilltops to the east and south."


Section 2 - Woods

Woods is west of Hills. "[if unvisited][italic type]For two thousand years brown autumn dwelt in these woods; the rime of winter whitened the beech clump on the ridge; again the buds came on the wind-blown hawthorn bushes, and in the evening the broad constellation of Orion covered the east. The world turns and now summer comes again.[paragraph break][roman type][end if]You are in a small forest at the foot of the hills.[paragraph break]A path here goes east and west."


Section 3 - TumulusHill

TumulusHill is east of Hills.
The printed name of TumulusHill is "Hilltop".
The description is "[if unvisited][italic type]There were grass-grown tumuli on the hills to which of old I used to walk, sit down at the foot of one of them, and think. Some warrior had been interred there in the antehistoric times. The sun of the summer morning shone on the dome of sward, and the air came softly up from the wheat below, the tips of the grasses swayed as it passed sighing faintly, it ceased, and the bees hummed by to the thyme and heathbells. I became absorbed in the glory of the day, the sunshine, the sweet air, the yellowing corn turning from its sappy green to summer's noon of gold, the lark's song like a waterfall in the sky. I felt at that moment that I was like the spirit of the man whose body was interred in the tumulus; I could understand and feel his existence the same as my own. He was as real to me two thousand years after interment as those I had seen in the body. The abstract personality of the dead seemed as existent as thought. As my thought could slip back the twenty centuries in a moment to the forest-days when he hurled the spear, or shot with the bow, hunting the deer, and could return again as swiftly to this moment, so his spirit could endure from then till now, and the time was nothing.[paragraph break][roman type][end if]You are on a hilltop inhabited only by an ancient warrior in his burial mound.[paragraph break]A small wood can be seen in the distance to the west.[line break]A brook lies down the hill to the south.[if wall hole is open][line break]There is a hole leading into the burial mound."

The tumulus is in TumulusHill. "[if we have not examined the tumulus][italic type]Sweetly the summer air came up to the tumulus, the grass sighed softly, the butterflies went by, sometimes alighting on the green dome. Two thousand years! Summer after summer the blue butterflies had visited the mound, the thyme had flowered, the wind sighed in the grass. The azure morning had spread its arms over the low tomb; and full glowing noon burned on it; the purple of sunset rosied the sward. Stars, ruddy in the vapour of the southern horizon, beamed at midnight through the mystic summer night, which is dusky and yet full of light. White mists swept up and hid it; dews rested on the turf; tender harebells drooped; the wings of the finches fanned the air—finches whose colours faded from the wings how many centuries ago! Two thousand times! Two thousand times the woods grew green, and ring-doves built their nests. Day and night for two thousand years—light and shadow sweeping over the mound—two thousand years of labour by day and slumber by night. Mystery gleaming in the stars, pouring down in the sunshine, speaking in the night, the wonder of the sun and of far space, for twenty centuries round about this low and green-grown dome. Yet all that mystery and wonder is as nothing to the Thought that lies therein, to the spirit that I feel so close.[paragraph break][roman type][end if]It is a burial mound, covered in grass. An ancient warrior is housed within.[if wall hole is open] A hole has been dug into the side of the tumulus."
The tumulus is scenery. Understand "burial mound" as the tumulus. Understand "mound" as the tumulus.

The wall hole is inside from TumulusHill and outside from Inside the Tumulus. The wall hole is a door. The wall hole is closed. The wall hole is not openable. The wall hole is scenery. The description of the wall hole is "It is just the dirt and grass wall of the mound."

Instead of going inside from TumulusHill:
	if wall hole is closed:
		say "You want to go into the burial mound? How would you get in?";
		rule fails;
	otherwise:
		say "You crawl into the hole in the side of the burial mound.";
		if player is holding the black orb:
			say "[line break][bold type]Inside the Tumulus[line break][roman type]Upon entering the burial mound, you are overcome with a connection to the ancient warrior and with a sense of the meaningless of time. The black orb pulses; you feel yourself freed from the restraints of the present and transported...";
			move player to Ancient Hilltop;
		otherwise:
			move player to Inside the Tumulus;

Digging-nothing is an action applying to nothing. Understand "dig" and "dig hole" as digging-nothing.
Check digging-nothing:
	if the player carries the shovel:
		say "Where do you want to dig?";
	otherwise:
		say "What, with your hands? You'll need a shovel for any serious excavation.".

Digging-something is an action applying to one thing. Understand "dig [something] with shovel", "dig [something] with spade", "dig [something]", "dig hole in [something]", "dig in [something]" and "dig into [something]" as digging-something.
Check digging-something:
	if the player carries the shovel:
		if the noun is the wall hole:
			if the wall hole is closed:
				say "You dig into the burial mound, and soon there is an opening leading inside.";
				now the wall hole is open;
				now the description of the wall hole is "There is a hole in the mound here.";
			otherwise:
				say "There is already a hole dug there.";
		otherwise:
			say "You can't dig there. You are very weak. Try somewhere with softer dirt.";
	otherwise:
		say "What, with your hands? You'll need a shovel for any serious excavation.".
Instead of digging-something the tumulus:
	try digging-something the wall hole.


Section 4 - Inside the Tumulus

The description of Inside the Tumulus is "[if unvisited][italic type]There is no separation-no past; eternity, the Now, is continuous. When all the stars have revolved they only produce Now again. The continuity of Now is for ever. So that it appears to me purely natural, and not super natural, that the soul whose temporary frame was interred in this mound should be existing as I sit on the sward. How infinitely deeper is thought than the million miles of the firmament! The wonder is here, not there; now, not to be, now always. Things that have been miscalled supernatural appear to me simple, more natural than nature, than earth, than sea, or sun. It is beyond telling more natural that I should have a soul than not, that there should be immortality; I think there is much more than immortality. It is matter which is the supernatural, and difficult of under-standing. Why this clod of earth I hold in my hand? Why this water which drops sparkling from my fingers dipped in the brook? Why are they at all? When? How? What for? Matter is beyond understanding, mysterious, impenetrable; I touch it easily, comprehend it, no. Soul, mind—the thought, the idea—is easily understood, it understands itself and is conscious.[paragraph break][roman type][end if]You are inside of the hilltop burial mound.[paragraph break]There is a hole in the wall of the mound letting in light and air from the outside."

There is a skeleton in Inside the Tumulus.
The description of the skeleton is "[if we have not examined the skeleton][italic type]Two thousand years being a second to the soul could not cause its extinction. It was no longer to the soul than my thought occupied to me. Recognising my own inner consciousness, the psyche, so clearly, death did not seem to me to affect the personality. In dissolution there was no bridgeless chasm, no unfathomable gulf of separation; the spirit did not immediately become inaccessible, leaping at a bound to an immeasurable distance. Look at another person while living; the soul is not visible, only the body which it animates. Therefore, merely because after death the soul is not visible is no demonstration that it does not still live. The condition of being unseen is the same condition which occurs while the body is living, so that intrinsically there is nothing exceptionable, or supernatural, in the life of the soul after death. Resting by the tumulus, the spirit of the man who had been interred there was to me really alive, and very close. This was quite natural, as natural and simple as the grass waving in the wind, the bees humming, and the larks' songs. Only by the strongest effort of the mind could I understand the idea of extinction; that was supernatural, requiring a miracle; the immortality of the soul natural, like earth. Listening to the sighing of the grass I felt immortality as I felt the beauty of the summer morning, and I thought beyond immortality, of other conditions, more beautiful than existence, higher than immortality.[paragraph break][roman type][end if]It is the skeleton of a long-dead warrior, buried within this tumulus - his body's final home."
Instead of taking skeleton, say "Leave him be - better that he continue here toward dissolution." Understand "ancient warrior" as the skeleton. Understand "warrior" as the skeleton.

There is a scrap of paper in Inside the Tumulus.
The description of the scrap of paper is "It is a piece of paper. On it is written:[paragraph break][italic type]The silky grass sighs as the wind comes carrying the blue butterfly more rapidly than his wings. A large humble-bee burrs round the green dome against which I rest; my hands are scented with thyme. The sweetness of the day, the fulness of the earth, the beauteous earth, how shall I say it?[paragraph break]That there is no knowing, in the sense of written reasons, whether the soul lives on or not, I am fully aware. I do not hope or fear. At least while I am living I have enjoyed the idea of immortality, and the idea of my own soul. If then, after death, I am resolved without exception into earth, air, and water, and the spirit goes out like a flame, still I shall have had the glory of that thought."
Before examining the scrap of paper:
	unless the player is holding the scrap of paper:
		say "It is a piece of paper. There is some writing on it, but you can't read it from here.";
		stop the action;		

Section 5 - PyreHill

PyreHill is south of Hills. "You are on top of a tall hill. There is a [if the funeral pyre is unburnt]mass of stripped trees gathered into a funeral pyre[otherwise]large pile of ashes[end if] at the center of the hilltop.[paragraph break]There are paths down the hillsides to the north and southwest."
The printed name of PyreHill is "Hilltop".

The funeral pyre is scenery in PyreHill.
The funeral pyre can be burnt or unburnt. The funeral pyre is unburnt.
Understand "ashes", "ash pile", and "pile of ashes" as the funeral pyre when the funeral pyre is burnt.

Orb is a kind of thing.
The black orb is an orb.
The description of the black orb is "It is a round ball, so black that it seems almost to be a hole in the universe."
The white orb is an orb.
The description of the white orb is "It is a round ball, so white that it seems to have its own light."
After taking the white orb:
	say "As you reach for the white orb, the black one fades into nothingness.";
	now the black orb is nowhere.
After taking the black orb:
	say "As you reach for the black orb, the white one glows and then dissolves.";
	now the white orb is nowhere.

The block burning rule is not listed in the check burning rulebook.
Check burning:
	if player is not holding a box of matches:
		say "You'll need something to start the fire with.";
	otherwise if the player is not holding the scrap of paper:
		say "You've got some matches, but you'll need some tinder. Something that burns easily.";
	otherwise if the noun is not the funeral pyre:
		say "You can't set just anything on fire.";
	otherwise:
		say "You set fire to the funeral pyre and watch the flame lick into the air. When it is done, something glints from the pile of ashes.";
		now the funeral pyre is burnt;
		now the printed name of the funeral pyre is "pile of ashes";
		now the scrap of paper is nowhere;
		now the black orb is in PyreHill;
		now the white orb is in PyreHill.


Section 6 - Brook

Brook is southeast of PyreHill and south of TumulusHill.

The description of Brook is "You are next to a brook of water.[paragraph break]There are hills both to the north and northwest.[line break]To the east, the brook flows down to the seashore."

Chapter 2 - The Cottage

Section 1 - Garden

Garden is west of Woods. "[if unvisited][italic type]It happened once that a man was drowned while bathing, and his body was placed in an outhouse near the garden. I passed the outhouse continually, sometimes on purpose to think about it…[paragraph break][roman type][end if]You are in a small garden, neatly kept. There is an outhouse nearby as well.[paragraph break]There is a cottage to the north.[line break]There is a path into the woods to the east."

The outhouse is scenery in the garden.
The description of the outhouse is "It's an outhouse. [if outhouse door is locked]There is a padlock on the door.[end if]".
Instead of entering the outhouse, try going inside.

The outhouse door is inside from the Garden and outside from Inside the Outhouse. The outhouse door is a door. The outhouse door is lockable and locked. The first key unlocks the outhouse door. The outhouse door is scenery.
The description of the outhouse door is "It is the door leading to the outhouse. [if open]It is open.[end if][if locked]There is a padlock on the door.[end if]"

A shovel is in the Garden. "There is a shovel leaning against the outhouse."
The description of the shovel is "It is a plain spade, good for digging holes in the earth."
Understand "spade" as the shovel.


Section 2 - Inside the Outhouse

The description of Inside the Outhouse is "It's an outhouse. The only thing worth noting is the dead body propped up in the corner. The smell is pretty bad, but it's not clear what the source is."

A dead body is scenery in Inside the Outhouse. Understand "man" as the dead body.
The description of the dead body is "[if we have not examined the dead body][italic type]...it always seemed to me that the man was still living. Separation is not to be comprehended; the spirit of the man did not appear to have gone to an inconceivable distance. As my thought flashes itself back through the centuries to the luxury of Canopus, and can see the gilded couches of a city extinct, so it slips through the future, and immeasurable time in front is no boundary to it. Certainly the man was not dead to me.[paragraph break][roman type][end if]It is the dead body of a man, apparently drowned. Something bulges from his shirt pocket."
The shirt pocket is scenery in Inside the Outhouse. The shirt pocket is a container. Understand "man's pocket" as the shirt pocket.
The second key is in the shirt pocket. The printed name of the second key is "key".
After taking the second key:
	if the second key was in the shirt pocket:
		say "You gingerly remove the key from the dead man's pocket.";
		now the printed name of the second key is "boathouse key";
		now the indefinite article of the second key is "the";
		rule succeeds.
Understand "boathouse key" as the second key when we have taken the second key.
		
Instead of inserting something into the shirt pocket:
	say "Don't do that! Keep your [noun] to yourself."
	
Instead of taking the dead body, say "Just leave it alone."

[TODO: Leaving outhouse with key triggers funeral.]


Section 3 - Cottage

Cottage is north of Garden.


Section 4 - Inside the Cottage

Inside from Cottage is a room called Inside the Cottage.

The first key is in Inside the Cottage. [TODO: Hide this somewhere.]
The printed name of the first key is "key".
After taking the first key:
		now the printed name of the first key is "outhouse key";
		now the indefinite article of the first key is "the";
		make no decision.
Understand "outhouse key" as the first key when we have taken the first key.


Chapter 3 - The Seashore

Section 1 - Seashore

Seashore is east of Brook. [TODO: Add a description]

The boathouse is scenery in the Seashore.
The description of the boathouse is "It's a boathouse on the edge of the water.[if boathouse door is locked]There is a padlock on the door.[end if]".
Instead of entering the boathouse, try going inside.

The boathouse door is inside from the Seashore and outside from Inside the Boathouse. The boathouse door is a door. The boathouse door is lockable and locked. The second key unlocks the boathouse door. The boathouse door is scenery.
The description of the boathouse door is "It is the door leading into the boathouse. [if open]It is open.[end if][if locked]There is a padlock on the door.[end if]"

After going to Inside the Boathouse:
	if player is holding the white orb:
		say "[line break][bold type]Inside the Boathouse[line break][roman type]You enter the boathouse. Here within earshot of the ocean waves, you feel the layers of Self begin to fall away, as if you were beginning to dissolve into the salt air. A mild tone begins to emanate from the white orb, and you feel a peace come over you. You step into the boat and push out into the water.";
		move player to Ocean of Mind; [TODO: Put player in boat.]
	otherwise:
		make no decision.

Section 2 - Boathouse

The description of Inside the Boathouse is "You are inside the boathouse." [TODO: Description, boat, exit to the ocean]

There is a box of matches in Inside the Boathouse. [TODO: Description]
Understand "matches", "matchbook", and "matchbox" as a box of matches.

Part 2 - The Journey

Chapter 1 - Ocean of Mind

Section 1 - Ocean of Mind

Ocean of Mind is a room.


Section 2 - Eternity's Shore

Eternity's Shore is a room.


Chapter 2 - Ancient World

Section 1 - Ancient Hilltop

Ancient Hilltop is a room.


Section 2 - Ancient Forest

Ancient Forest is east of Ancient Hilltop.


Part 3 - The Cave

Section 1 - Ancient Cave

Ancient Cave is a room.
Ancient Cave is east of Ancient Forest. West of Ancient Cave is nowhere.
Ancient Cave is north of Eternity's Shore. South of Ancient Cave is nowhere.


Section 2 - Inside the Cave

Inside from Ancient Cave is a room called Inside the Cave.