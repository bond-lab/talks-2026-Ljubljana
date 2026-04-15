## Some interesting cases

### 1. 双子 (futago) — twin(s) — the individual vs. the pair
`wnja-10734394-n` is *one of* a twin pair: "同じ妊娠から同時に生まれた2人の子供の一方".  
`wnja-80001237-n` is the *pair* (二子/双生児), with `holo_member`→individual and `mero_member`→individual.  
The synset for the pair has **no definition** — a data gap.  What relation should link these to Princeton WN's "twin" (10733457)?

### 2. 僕 vs. 俺 vs. 私 — pronouns encoded as metalinguistic facts
All three first-person pronouns share synset `wnja-77000017-n` (僕/俺) or `wnja-77000012-n` (私), with `exemplifies` relations to:
- `wnja-06327718-n` (一人称/第一人称) — 1st person
- `wnja-06327136-n` (人代名詞) — personal pronoun  
- `wnja-06299916-n` (単数形) — singular  
- register features: 僕 exemplifies `formal`; 私 exemplifies `polite` (丁寧/慇懃)  
Discussion: is this the right way to encode register/gender distinctions? Should 俺 and 僕 be in the *same* synset?

### 3. 彼 (kare) — boyfriend OR 3rd person pronoun
Two entirely different senses: `wnja-09871364-n` "男性と恋愛する女の子または若い女性の愛人である男" (boyfriend) and `wnja-77000046-n` (3rd person pronoun, masculine).  
Japanese collapses pronoun/boyfriend into one word; English does not.

### 6. お久しぶりです / おひさ — register variation in one synset
`wnja-80000674-x` holds: お久しぶりです, お久し振りです, お久しぶり, お久し振り, お久, おひさ, おひさしぶりです, おひさしぶり — 8 forms, from formal to casual, all in one synset.  
Discussion: should register variants be split into separate synsets?

### 7. ふん / え / えっ — exclamative cluster
`wnja-80001169-x` (え/えっ/ええっ): "他者を威圧する際に発する語" (said when intimidating someone).  
`wnja-80001166-x` (ふん): "怒りや不満、あるいは他人を見下していることを示す際に発せられる語".  
よいしょ is **not in the wordnet at all** — a gap!

### 8. とんでもない — negation exclamative
`wnja-80001330-x`: "前の言説と正反対であることを表す際に用いられるフレーズ" (phrase expressing the exact opposite of what was just said).  
Covers: "not at all / that's outrageous / don't mention it" — a very pragmatic, context-sensitive entry.

### 9. ま / まあ — softening/hedging particle
`wnja-80001386-x`: "軽い肯定、あるいは同意を伝える際に用いられるフレーズ; 会話相手や自分を軽くなだめる、あるいは説得するためにも用いられる"  
(light agreement; also used to soothe or gently persuade the listener or oneself)  
One of the most untranslatable Japanese pragmatic particles — is this definition adequate?

### 10. お疲れ様 / ご苦労様 — sympathy greetings
`wnja-80002405-x`: "相手の苦労をねぎらう発話" (utterance sympathizing with someone's effort).  
Both forms in one synset; but note ご苦労様 has strong register constraints (superiors→inferiors only) that aren't encoded.

### 11. 羽 (wa) — birds and rabbits
`wnja-76100129-x`: "ツバメやタカやペンギンなどの鳥、またウサギに対しても用いられる分類辞" — sortal classifier for birds and (unusually) rabbits.  


### 12. 個 (ko) vs. 冊 (satsu) — classifier granularity
`個` (wnja-76100106-x): inanimate objects — watermelons, grapes, apples, eggs, computers, problems, festivals...  
`冊` (wnja-76100107-x): bound flat-object sets — books, magazines, notebooks, dictionaries.  
Discussion: how does one decide where to draw the category boundary?

### 13. 位 (kurai/i) — for souls
`wnja-76100104-x`: "特に、肉体から切り離された魂に対して用いられる sortal classifier"  
The classifier for departed souls. No English equivalent exists.

### 14. 振 (furi) — only for Japanese swords
`wnja-76100140-x`: "もっぱら、日本刀に対して用いられる sortal classifier"  
Ultra-specific: used only for *nihontō*. Contrast with 本 (for long thin things in general).

### 15. 暑い↔寒い vs 熱い↔冷たい — the temperature antonym split
The newly added antonym network:
- 暑い (atmospheric hot) ↔ 寒い (atmospheric cold)  
- 熱い (hot to touch) ↔ 冷たい (cold to touch/emotionally cold)  
- 暖かい (pleasantly warm outdoors) ↔ 涼しい (pleasantly cool outdoors)  
- 温かい (warm food/body) ↔ 冷たい  
Note 冷たい has *two* antonyms (熱い and 温かい). Should it be split?

### 16. 馬鹿 — polysemy explosion
馬鹿 maps to 10 different synsets: adjectives for "lacking intelligence", "slow to learn", "recklessly irresponsible", "absurd" — plus nouns for "foolishness" (with antonym 分別 wisdom), "gullible person", "person lacking sense", "intellectually inferior person".  
Its antonym 04890112-n (分別/俐発/明達) is the tidy opposite of the abstract noun sense only.

### 17. 阿呆 (ahō) — dialectal synonym with extra senses
阿呆 shares most of 馬鹿's synsets but also has `wnja-02571536-a` "滑稽な、愚かな" with `exemplifies` → 話し言葉/俗語 (colloquial/slang).  
馬鹿 does *not* have this; 阿呆 is marked as colloquial but 馬鹿 isn't.  Accuracy?

### 18. 義理関係 — in-law semantic gap
`wnja-80001347-n`: "血の繋がりではなく、婚姻や養子縁組による関係" (relationship by marriage or adoption, not blood).  
Japanese 義理 encodes the social-obligation dimension of such relationships; English has no single word.

### 19. 一石二鳥 / 四面楚歌 / 七転八起 — yojijukugo gap
None of these are in the wordnet. The yojijukugo supertype `wnja-70100000-n` exists, but only ~4 of the 368 four-character idiom synsets have Japanese entries in the NTU-MC database. This is a major **data gap** for the Japan-specific vocabulary — an opportunity for future work.

### 20. なるほど — epistemic understanding marker
`wnja-80001756-x`: "ある状況から推測して、あるいは説明を聞いて、それが起こる理由について理解した際に用いられるフレーズ" (phrase used when you understand why something happened, either from context or explanation).  
Literally "as one might naturally expect/become" — translates as "I see", "indeed", "that makes sense". The definition here is unusually precise and interesting for a wordnet entry.

## Missing entries

### Greetings & social rituals (x-POS, Japan-specific)

**1. よいしょ / どっこいしょ**
The exertion grunt when lifting or sitting down. Close to English "yo-heave-ho" but also used rhetorically as a self-encouragement marker (老人が「どっこいしょ」と腰を下ろす). No Princeton WN equivalent; needs its own Japan-specific exclamative synset.

**2. いただきます**
Pre-meal utterance: "I humbly receive." Encodes gratitude to the living things that gave their life, the cook, and the farmer simultaneously. Often mistranslated as "let's eat". Antonym-ish pair: ごちそうさま (post-meal). Both are missing.

**3. ごちそうさまでした**
Post-meal closure. "It was a feast." Etymologically: ご馳走 = running around (to gather ingredients). Culturally required; skipping it is rude.

**4. いってきます / いってらっしゃい**
Departure/farewell pair spoken at the threshold of the home. No direct English equivalent. The pair should be linked with `antonym` or a dedicated paired-utterance relation.

**5. ただいま / おかえり(なさい)**
Return-home pair. ただいま = "I'm home (just now)"; おかえりなさい = "welcome back". Again a threshold-crossing pair. Compare お邪魔します / お邪魔しました (entering/leaving someone else's home) — also missing.

**6. よろしくお願いします**
The most untranslatable greeting: "I ask for your favour / please be kind to me / I'm in your hands." Used at introductions, at the start of collaborations, when making requests, when ending emails. One concept, dozens of English contexts.

**7. すみません**
Literally "it doesn't end / I can't settle this debt." Used as apology, attention-getter, and expression of gratitude — simultaneously. The pragmatic promiscuity of すみません is a classic linguistics puzzle.

**Bonus pattern — the threshold utterances (1, 4, 5 above):**  
Japanese has a complete set of utterances tied to crossing physical thresholds (home-door, restaurant, shop, someone else's home). They form a semantic field — call it "boundary-crossing rituals" — that simply doesn't exist as a Princeton WN category. All are missing and all need Japan-specific synsets with a common supertype.

---

### Culturally untranslatable concepts (nouns, Japan-specific)

**8. わびさび (侘び寂び)**
The aesthetic of impermanence, imperfection, and incompleteness. Foundational to Japanese art, tea ceremony, garden design. No single Princeton WN synset covers it.

**9. 木漏れ日 (komorebi)**
Sunlight filtering through leaves. A single noun for a specific visual phenomenon that requires a sentence to describe in English. Hypernym: 光 or 自然現象.

**10. もったいない**
The feeling of regret at waste or at a thing being used below its potential. Popularized globally by Wangari Maathai. Maps loosely to "wastefulness" but carries an emotional/moral charge that the noun doesn't.

**11. 一期一会 (ichi-go ichi-e)**
"One time, one meeting" — every encounter is unrepeatable, so treasure it. Tea ceremony origin. A yojijukugo that is genuinely used as everyday vocabulary (unlike many academic 四字熟語).

---

### Yojijukugo (四字熟語) gaps

**12. 一石二鳥 (isseki nichō)**
"One stone, two birds" = kill two birds with one stone. Exact counterpart to the English idiom, making it a perfect teaching example of cross-linguistic isomorphism. Does it exist in English?  If so, should we share the same synsets?


**13. 七転八起 (nana korobi ya oki)**
"Fall seven times, rise eight." Perseverance. Compare 七転八倒 (writhing in agony, seven falls eight rolls) which is completely different. The pair illustrates how one character change flips the meaning.  Can you think of a similar example in a language you speak?

**14. 四面楚歌 (shimen soka)**
"Surrounded on all sides by Chu songs" — completely isolated, no allies. Chinese historical origin (Battle of Gaixia).

What should it's hypernym be?

---

### Modern social phenomena (nouns, Japan-specific)

**15. 引きこもり (hikikomori)**
Social withdrawal syndrome: prolonged self-isolation, typically young adults, refusing to leave home. Now an international loanword. Needs a clinical/social definition and hypernym → 精神的疾患 or 社会的孤立.

**16. 過労死 (karōshi)**
Death from overwork. Also an international loanword. Should be a compound synset: hypernym → 死亡原因, with relation to 過労 (overwork). The fact that Japanese needed a single word for this is itself a cultural data point.

**17. 婚活 / 就活 / 終活**
The -活 compound series: marriage-hunting (婚活), job-hunting (就活), end-of-life preparation (終活). These three share a productive morphological pattern worth encoding in a family of synsets. 就活 is particularly interesting as it encodes the ritualized Japanese job-hunting season.

**18. 孤独死 (kodokushi)**
Dying alone and undiscovered for days/weeks. Distinguished from 孤立死 by connotation. A social-welfare and urbanization concept. Again, the lexical gap in English (no single word) is the point.

---

### Mimetics & psychological states

**19. ほっこり**
Warm-hearted coziness; the feeling of being gently warmed (physically or emotionally). Kyoto dialect origin, now standard. Close to Danish *hygge* but more about gentle internal warmth than social atmosphere.  What can it be linked to?

**20. なんとなく**
"Somehow; for no particular reason; vaguely." Encodes a diffuse motivation or sensation that the speaker cannot or will not articulate. Closely related to the cultural preference for implicit communication (察する / 空気を読む). English "somehow" is much weaker. Currently absent despite being extremely high-frequency.

---


