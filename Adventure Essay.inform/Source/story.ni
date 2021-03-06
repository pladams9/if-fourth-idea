"A Fourth Idea" by pladams9

Use DICT_WORD_SIZE of 16.

The story headline is "An Adventure Essay".
The story genre is "Surreal".
The release number is 1.
The story description is "This is a piece of interactive fiction created for Ludum Dare 41. The long passages quoted are from Richard Jeffries' book 'The Story of My Heart' which is in the public domain."
The story creation year is 2018.

Release along with cover art ("A layered symbol including a large numeral 4, a triangle, and a monad"), an interpreter, the source text, and the introductory booklet.

Part 0

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

Instead of entering the wall hole, try going inside.
Instead of going inside from TumulusHill:
	if wall hole is closed:
		say "You want to go into the burial mound? How would you get in?";
		rule fails;
	otherwise:
		say "You crawl into the hole in the side of the burial mound.";
		if player is holding the black orb:
			say "[line break][bold type]Inside the Tumulus[line break][roman type]Upon entering the burial mound, you are overcome with a connection to the ancient warrior and with a sense of the meaningless of time. The black orb pulses; you feel yourself freed from the restraints of the present and transported...";
			now the matches are nowhere;
			now the first key is nowhere;
			now the second key is nowhere;
			now the shovel is nowhere;
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

PyreHill is south of Hills. "[if unvisited][italic type]How many words it has taken to describe so briefly the feelings and the thoughts that came to me by the tumulus; thoughts that swept past and were gone, and were succeeded by others while yet the shadow of the mound had not moved from one thyme flower to another, not the breadth of a grass blade. Softly breathed the sweet south wind, gently the yellow corn waved beneath; the ancient, ancient sun shone on the fresh grass and the flower, my heart opened wide as the broad, broad earth. I spread my arms out, laying them on the sward, seizing the grass, to take the fulness of the days. Could I have my own way after death I would be burned on a pyre of pine-wood, open to the air, and placed on the summit of the hills. Then let my ashes be scattered abroad—not collected urn an urn—freely sown wide and broadcast. That is the natural interment of man—of man whose Thought at least has been among the immortals; interment in the elements. Burial is not enough, it does not give sufficient solution into the elements speedily; a furnace is confined. The high open air of the topmost hill, there let the tawny flame lick up the fragment called the body; there cast the ashes into the space it longed for while living. Such a luxury of interment is only for the wealthy; I fear I shall not be able to afford it. Else the smoke of my resolution into the elements should certainly arise in time on the hill-top.[paragraph break][roman type][end if]You are on top of a tall hill. There is a [if the funeral pyre is unburnt]mass of stripped trees gathered into a funeral pyre[otherwise]large pile of ashes[end if] at the center of the hilltop.[paragraph break]There are paths down the hillsides to the north and southeast."
The printed name of PyreHill is "Hilltop".

The funeral pyre is scenery in PyreHill. The funeral pyre is a container. The funeral pyre is closed. The funeral pyre is not openable.
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
Instead of dropping an orb, say "You feel compelled to keep it."

The block burning rule is not listed in the check burning rulebook.
Check burning:
	if player is not holding a box of matches:
		say "You'll need something to start the fire with.";
	otherwise if the player is not holding the scrap of paper:
		say "You've got some matches, but you'll need some tinder. Something that burns easily.";
	otherwise if the noun is not the funeral pyre:
		say "You can't set just anything on fire.";
	otherwise:
		say "You set fire to the scrap of paper and watch as the flames of the pyre lick into the air. When it is done, something glints from the pile of ashes.";
		now the funeral pyre is burnt;
		now the printed name of the funeral pyre is "pile of ashes";
		now the scrap of paper is nowhere;
		now the funeral pyre is open;
		now the black orb is in the funeral pyre;
		now the white orb is in the funeral pyre.


Section 6 - Brook

Brook is southeast of PyreHill and south of TumulusHill.

The description of Brook is "[if unvisited][italic type]I dip my hand in the brook and feel the stream; in an instant the particles of water which first touched me have floated yards down the current, my hand remains there. I take my hand away, and the flow—the time—of the brook does not exist to me. The great clock of the firmament, the sun and the stars, the crescent moon, the earth circling two thousand times, is no more to me than the flow of the brook when my hand is withdrawn; my soul has never been, and never can be, dipped in time.[paragraph break][roman type][end if]You are next to a brook of water.[paragraph break]There are hills both to the north and northwest.[line break]To the east, the brook flows down to the seashore."

The brook-prop is scenery in Brook. Understand "brook", "water", "stream", and "river" as the brook-prop. The description of the brook-prop is "It is a small stream of water, bubbling up from some hidden place among the hills and flowing down to join the greater waters of the sea. Who knows where it will go from there?"

Chapter 2 - The Cottage

During-funeral is a truth state that varies. During-funeral is true.

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

The description of Inside the Outhouse is "It's an outhouse. [if during-funeral is true]The only thing worth noting is the dead body propped up in the corner. [end if]The smell is pretty bad, but it's not clear what the source is."

A dead body is scenery in Inside the Outhouse. Understand "man" as the dead body.
The description of the dead body is "[if we have not examined the dead body][italic type]...it always seemed to me that the man was still living. Separation is not to be comprehended; the spirit of the man did not appear to have gone to an inconceivable distance. As my thought flashes itself back through the centuries to the luxury of Canopus, and can see the gilded couches of a city extinct, so it slips through the future, and immeasurable time in front is no boundary to it. Certainly the man was not dead to me.[paragraph break][roman type][end if]It is the dead body of a man, apparently drowned. Something bulges from his shirt pocket."
The shirt pocket is part of the dead body. The shirt pocket is a container. Understand "man's pocket" as the shirt pocket.
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

Instead of going outside from Inside the Outhouse:
	if the player is holding the second key:
		say "[bold type]Garden[line break][roman type]As you walk out of the outhouse, several men in suits push past you. They hoist the body of the man up and carry him out to a casket waiting in the garden. You look up and realize that all the people from the house are outside now, watching. The casket is shut and brought up to the men's shoulders. They walk back toward the cottage; everyone else follows. Then they are gone.";
		now the dead body is nowhere;
		now the cottage-people are nowhere;
		now the funeral-food is nowhere;
		now during-funeral is false;
		move player to Garden, without printing a room description;
	otherwise:
		move player to Garden.


Section 3 - Cottage

Cottage is north of Garden. "[if unvisited][italic type]There is so much beyond all that has ever yet been imagined. As I write these words, in the very moment, I feel that the whole air, the sunshine out yonder lighting up the ploughed earth, the distant sky, the circumambient ether, and that far space, is full of soul-secrets, soul-life, things outside the experience of all the ages. The fact of my own existence as I write, as I exist at this second, is so marvellous, so miracle-like, strange, and supernatural to me, that I unhesitatingly conclude I am always on the margin of life illimitable, and that there are higher conditions than existence. Everything around is supernatural; everything so full of unexplained meaning.[paragraph break][roman type][end if]You are standing at the back of a small, brick-faced cottage. It is flanked on either side by a small brick wall, and you can see a lane on the other side. The door to the cottage is open.[paragraph break]There is a garden to the south."

The cottage-door is scenery in Cottage. Understand "door" as the cottage-door. The description of the cottage-door is "It is a simple wooden door, painting a pale blue. A paned window is set into the upper half of the door."
Instead of entering the cottage-door, try going inside.

The cottage-prop is scenery in Cottage. Understand "cottage", "house", and "building" as the cottage-prop. The description of the cottage-prop is "It is a small, brick building. Flowering vines climb the corners of the windows. The back door is open."

The cottage-windows are scenery in Cottage. Understand "windows" and "window" as cottage-windows. The description of the cottage-windows is "[if during-funeral is true]You can see people moving around through the windows.[otherwise]They are just empty windows."

The small brick wall is scenery in Cottage. The description of the small brick wall is "It is a short wall made of worn bricks. In some places you can see cracks and gaps in the mortart."

The little lane is scenery in Cottage. The description of the little lane is "You can see a little lane on the other side of the wall."


Section 4 - Inside the Cottage

Inside from Cottage is a room called Inside the Cottage.
The description of Inside the Cottage is "You are inside the cottage, in the kitchen.[if during-funeral is true] People in black attire are milling about with finger foods and cups of juice."

The cottage-people are scenery in Inside the Cottage. Understand "people", "person", "family", and "friends" as the cottage-people. "These people look sad and bored. Mostly sad. They are all wearing black clothing."

The funeral-food is scenery in Inside the Cottage. Understand "food", "drink", "cups", "juice", "cups of juice", "finger food", and "finger foods" as the funeral-food. The description of the funeral-food is "It's just your average funeral fare."

The kitchen is scenery in Inside the Cottage. The description is "It is a quaint little kitchen. It might be cozy for a retired couple[if during-funeral is true] - it's a bit crowded right now though[end if]."

The table is in Inside the Cottage. The description of the table is "It is a plain wooden table. The legs and edges are chipped."

The first key is on the table.
The printed name of the first key is "key".
After taking the first key:
		now the printed name of the first key is "outhouse key";
		now the indefinite article of the first key is "the";
		make no decision.
Understand "outhouse key" as the first key when we have taken the first key.


Chapter 3 - The Seashore

Section 1 - Seashore

Seashore is east of Brook. "[if unvisited][italic type]The supernatural miscalled, the natural in truth, is the real. To me everything is supernatural. How strange that condition of mind which cannot accept anything but the earth, the sea, the tangible universe! Without the misnamed supernatural these to me seem incomplete, unfinished. Without soul all these are dead. Except when I walk by the sea, and my soul is by it, the sea is dead. Those seas by which no man has stood—which no soul has been—whether on earth or the planets, are dead. No matter how majestic the planet rolls in space, unless a soul be there it is dead.[paragraph break][roman type][end if]You are standing on a small beach, nestled into an equally small cove. There is a boathouse nearby.[paragraph break]A path leads away from the shore to the west."

The real-ocean is scenery in Seashore. Understand "sea", "water", and "cove" as the real-ocean. The description of the real-ocean is "The water laps against the shore quietly."

The real-beach is scenery in Seashore. Understand "beach", "sand", "ground", and "shore" as the real-beach. The description of the real-beach is "The beach is small, sandy, and speckled with pebbles and washed up sticks."

The boathouse is scenery in the Seashore.
The description of the boathouse is "It's a boathouse on the edge of the water.[if boathouse-door is locked]There is a padlock on the door.[end if]".
Instead of entering the boathouse, try going inside.

The boathouse-door is inside from the Seashore and outside from Inside the Boathouse. The boathouse-door is a door. The boathouse-door is lockable and locked. The second key unlocks the boathouse-door. The boathouse-door is scenery. Understand "door" and "boathouse door" as the boathouse-door.
The description of the boathouse-door is "It is the door leading into the boathouse. [if open]It is open.[end if][if locked]There is a padlock on the door.[end if]"

After going to Inside the Boathouse:
	if player is holding the white orb:
		say "[line break][bold type]Inside the Boathouse[line break][roman type]You enter the boathouse. Here within earshot of the ocean waves, you feel the layers of Self begin to fall away, as if you were beginning to dissolve into the salt air. A mild tone begins to emanate from the white orb, and you feel a peace come over you. You step into the boat and push out into the water, leaving everything but the orb behind.";
		now the shovel is nowhere;
		now the matches are nowhere;
		now the first key is nowhere;
		now the second key is nowhere;
		move player to Ocean of Mind;
	otherwise:
		make no decision.

Section 2 - Boathouse

The description of Inside the Boathouse is "You are inside the boathouse. There is a small rowboat here."

The boathouse-prop is scenery in Inside the Boathouse. Understand "boathouse", "house", "building", and "room" as the boathouse-prop. The description of the boathouse-prop is "It is sort of a shed, most of a shed. The far wall is missing - open to the ocean. Most of the room's floor is open to the water which flows in."

The rowboat is scenery in Inside the Boathouse. Understand "boat" as the rowboat. The description of the rowboat is "A small rowboat. No way to row it though - it's oars are missing."
Instead of entering the rowboat, say "Not right now."

There is a box of matches in Inside the Boathouse. Understand "matches", "matchbook", and "matchbox" as a box of matches. The description of the box of matches is "A standard box of matches. There are plenty of matches inside, in decent condition."

Part 2 - The Journey

Chapter 1 - Ocean of Mind

Section 1 - Ocean of Mind

Ocean of Mind is a room. "[if unvisited][italic type]There is an immense ocean over which the mind can sail, upon which the vessel of thought has not yet been launched. I hope to launch it. The mind of so many thousand years has worked round and round inside the circle of these three ideas as a boat on an inland lake. Let us haul it over the belt of land, launch on the ocean, and sail outwards.[paragraph break][roman type][end if]You are floating in a boat in a vast ocean. The waves rock gently.[paragraph break]You have no oars, so there is no place to go. You can do nothing but wait."

The ocean-boat is scenery in Ocean of Mind. Understand "boat" and "rowboat" as the ocean-boat. The description of ocean-boat is "It is the vessel you set forth in. Wherever you are going now, it is taking you there."

The oars are scenery in Ocean of Mind. Understand "paddles" as the oars. The description of the oars is "You don't have any! There weren't ever any to begin with! How do you think that guy died?".

The waves are scenery in Ocean of Mind. Understand "water", "ocean", and "sea" as the waves. The description of the waves is "The waves are surprisingly small, but that doesn't make you feel safe."

The player has a number called ocean-turns-waited. The ocean-turns-waited of the player is 0.

Instead of waiting in Ocean of Mind:
	if the ocean-turns-waited of the player is 0:
		say "[italic type]As I move about in the sunshine I feel in the midst of the supernatural: in the midst of immortal things. It is impossible to wrest the mind down to the same laws that rule pieces of timber, water, or earth. They do not control the soul, however rigidly they may bind matter. So full am I always of a sense of the immortality now at this moment round about me, that it would not surprise me in the least if a circumstance outside physical experience occurred. It would seem to me quite natural. Give the soul the power it conceives, and there would be nothing wonderful in it.";
		now the ocean-turns-waited of the player is 1;
	otherwise if the ocean-turns-waited of the player is 1:
		say "[italic type]I can see nothing astonishing in what are called miracles. Only those who are mesmerised by matter can find a difficulty in such events. I am aware that the evidence for miracles is logically and historically untrustworthy; I am not defending recorded miracles. My point is that in principle I see no reason at all why they should not take place this day. I do not even say that there are or ever have been miracles, but I maintain that they would be perfectly natural. The wonder rather is that they do not happen frequently. Consider the limitless conceptions of the soul: let it possess but the power to realise those conceptions for one hour, and how little, how trifling would be the helping of the injured or the sick to regain health and happiness—merely to think it. A soul-work would require but a thought. Soul-work is an expression better suited to my meaning than 'miracle,' a term like others into which a special sense has been infused.";
		now the ocean-turns-waited of the player is 2;
	otherwise if the ocean-turns-waited of the player is greater than 1:
		say "Time and Self seem to slip away, and when they seem almost to be gone, a strip of land looms before you. Your boat washes gently to shore.";
		move player to Eternity's Shore.


Section 2 - Eternity's Shore

Eternity's Shore is a room. "[if unvisited][italic type]Time has never existed, and never will; it is a purely artificial arrangement. It is eternity now, it always was eternity, and always will be. By no possible means could I get into time if I tried. I am in eternity now and must there remain. Haste not, be at rest, this Now is eternity. Because the idea of time has left my mind—if ever it had any hold on it—to me the man interred in the tumulus is living now as I live. We are both in eternity.[paragraph break][roman type][end if]You are on a beach of white stones surrounded by forest.[paragraph break]There is a path into the forest to the north."

The eternity-beach is scenery in Eternity's Shore. Understand "beach", "stones", "white stones", "rocks", and "shore" as the eternity-beach. The description of the eternity-beach is "The stones that cover the beach look like white quartz. Each is angular but not sharp, and they range from the size of your fist to the size of your head."

The eternity-ocean is scenery in Eternity's Shore. Understand "sea", "water", and "cove" as the eternity-ocean. The description of the eternity-ocean is "The water laps against the shore quietly."

Instead of going north from Eternity's Shore:
	say "The path quickly disappears among the overgrowth, and you find yourself racing through the forest blindly. Then you see the light of a clearing up ahead. You burst out into the open, sure that you will not be able to find your way back through the forest.";
	move player to Ancient Cave.


Chapter 2 - Ancient World

Section 1 - Ancient Hilltop

Ancient Hilltop is a room. "[if unvisited][italic type]Realising that spirit, recognising my own inner consciousness, the psyche, so clearly, I cannot understand time. It is eternity now. I am in the midst of it. It is about me in the sunshine; I am in it, as the butterfly floats in the light-laden air. Nothing has to come; it is now. Now is eternity; now is the immortal life. Here this moment, by this tumulus, on earth, now; I exist in it. The years, the centuries, the cycles are absolutely nothing; it is only a moment since this tumulus was raised; in a thousand years it will still be only a moment. To the soul there is no past and no future; all is and will be ever, in now. For artificial purposes time is mutually agreed on, but is really no such thing. The shadow goes on upon the dial, the index moves round upon the clock, and what is the difference? None whatever. If the clock had never been set going, what would have been the difference? There may be time for the clock, the clock may make time for itself; there is none for me.[paragraph break][roman type]You seem to have lost all your possessions - the black orb being the only exception.[paragraph break][end if]You are on a hilltop nearly identical to the one which held the tumulus, but there is nothing here but grass and, surrounding the hill, forest.[paragraph break]A path to the east leads down into the forest."

The hill-forest is scenery in Ancient Hilltop. Understand "forest", "woods", and "trees" as the hill-forest. The description of the hill-forest is "The forest looks dense and intimidating. There is only path from here though, and it leads into the trees."


Section 2 - Ancient Forest

Ancient Forest is east of Ancient Hilltop. "[if unvisited][italic type]When I consider that I dwell this moment in the eternal Now that has ever been and will be, that I am in the midst of immortal things this moment, that there probably are Souls as infinitely superior to mine as mine to a piece of timber, what then, pray, is a 'miracle'? As commonly understood, a 'miracle' is a mere nothing. I can conceive soul-works done by simple will or thought a thousand times greater. I marvel that they do not happen this moment. The air, the sunlight, the night, all that surrounds me seems crowded with inexpressible powers, with the influence of Souls, or existences, so that I walk in the midst of immortal things. I myself am a living witness of it. Sometimes I have concentrated myself, and driven away by continued will all sense of outward appearances, looking straight with the full power of my mind inwards on myself. I find 'I' am there; an 'I' I do not wholly understand, or know—something is there distinct from earth and timber, from flesh and bones. Recognising it, I feel on the margin of a life unknown, very near, almost touching it: on the verge of powers which if I could grasp would give me an immense breadth of existence, an ability to execute what I now only conceive; most probably of far more than that. To see that 'I' is to know that I am surrounded with immortal things. If, when I die, that 'I' also dies, and becomes extinct, still even then I have had the exaltation of these ideas.[paragraph break][roman type][end if]You are standing in a forest. It appears to be completely unblemished by man.[paragraph break]A path leads to the west and east."

The forest-forest is scenery in Ancient Forest. Understand "forest", "woods", and "trees" as the forest-forest. The description of the forest-forest is "The forest looks impenetrable in all directions, except for the path to the east and west."

Instead of going east from Ancient Forest:
	say "The path quickly disappears among the overgrowth, and you find yourself racing through the forest blindly. Then you see the light of a clearing up ahead. You burst out into the open, sure that you will not be able to find your way back through the forest.";
	move player to Ancient Cave.

Part 3 - The Cave

Section 1 - Ancient Cave

Ancient Cave is a room. "[if unvisited][italic type]Twelve thousand years since the Caveman stood at the mouth of his cavern and gazed out at the night and the stars. He looked again and saw the sun rise beyond the sea. He reposed in the noontide heat under the shade of the trees, he closed his eyes and looked into himself. He was face to face with the earth, the sun, the night; face to face with himself.[paragraph break][roman type][end if]You are standing outside a cave.[paragraph break]The forest is inpenetrable in all directions. The cave mouth is the only way you see to go."
Ancient Cave is east of Ancient Forest. West of Ancient Cave is nowhere.
Ancient Cave is north of Eternity's Shore. South of Ancient Cave is nowhere.

The cave mouth is scenery in Ancient Cave. Understand "cave" and "mouth" as the cave mouth. The description of the cave mouth is "It is a wide open cave mouth. You can see smoke and a flicker of light coming from inside."
Instead of entering the cave mouth, try going inside.

The cave-forest is scenery in Ancient Cave. Understand "forest", "woods", and "trees" as the cave-forest. The description of the cave-forest is "The forest looks impenetrable in all directions."

Section 2 - Inside the Cave

Inside from Ancient Cave is a room called Inside the Cave.
The description of Inside the Cave is "[if unvisited][italic type]There was nothing between; no wall of written tradition; no built up system of culture—his naked mind was confronted by naked earth. He made three idea-discoveries, wresting them from the unknown; the existence of his soul, immortality, the deity. Now, to-day, as I write, I stand in exactly the same position as the Caveman. Written tradition, systems of culture, modes of thought, have for me no existence. If ever they took any hold of my mind it must have been very slight; they have long ago been erased.[paragraph break][roman type][end if]You are standing inside a cave. There is a fire going here, just inside the cave mouth."

A campfire is scenery in Inside the Cave. Understand "fire" as the campfire. The description of the campfire is "It is a small campfire, well built. You try to remember starting it but can't. You must have though - you're the only one here."

Instead of inserting an orb into the campfire:
	say "You drop the orb into the fire. It carries with it the last of whatever Self you possess and whatever attachments possess you. You are naked.";
	now the white orb is nowhere;
	now the black orb is nowhere.
	
The cave-prop is scenery in Inside the Cave. Understand "cave" as the cave-prop.
Instead of exiting in Inside the Cave, try going outside.
Instead of examining the cave-prop, try looking.
	
Instead of going outside from Inside the Cave:
	if player is holding the white orb:
		move player to Ancient Cave;
	otherwise:
		say "You step out of the mouth of the cave...[paragraph break][italic type]From earth and sea and sun, from night, the stars, from day, the trees, the hills, from my own soul—from these I think. I stand this moment at the mouth of the ancient cave, face to face with nature, face to face with the supernatural, with myself. My naked mind confronts the unknown. I see as clearly as the noonday that this is not all; I see other and higher conditions than existence; I see not only the existence of the soul, immortality, but, in addition, I realise a soul-life illimitable; I realise the existence of a cosmos of thought; I realise the existence of an inexpressible entity infinitely higher than deity. I strive to give utterance to a Fourth Idea. The very idea that there is another idea is something gained. The three found by the Cavemen are but stepping-stones: first links of an endless chain. At the mouth of the ancient cave, face to face with the unknown, they prayed. Prone in heart to-day I pray, Give me the deepest soul-life.";
		end the story saying "[bold type]IT IS COMPLETE."
