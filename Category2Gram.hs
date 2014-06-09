module Category2Gram (twograms) where

import qualified Data.Map as M

chemistry = M.fromList [("chemical reaction", 0.75)]
computers_ai = M.fromList [("artificial intelligence", 0.7), ("ai research", 0.8)]
computers_ai_datamining = M.fromList [("data mining", 1.45), ("knowledge discovery", 0.65), ("machine learning", 0.6)]
computers_ai_learning = M.fromList [("machine learning", 0.9), ("neural networks", 1.35), ("artificial intelligence", 1.1), ("neural network", 0.8), ("human brain", 0.6), ("learning algorithms", 0.55)]
computers_ai_nlp = M.fromList [("natural language", 0.8)]
computers_ai_search = M.fromList [("path cost", 1.7), ("node goal", 1.45), ("data mining", 1.45), ("mining data", 1.45), ("text mining", 1.45), ("ferret text", 1.45), ("sphinx ferret", 1.45), ("lucene sphinx", 1.45), ("search lucene", 1.45), ("ai search", 1.45), ("intelligence ai", 1.45), ("artificial intelligence", 1.45), ("goal node", 1.2), ("mining artificial", 1.2), ("are guaranteed", 0.95), ("path frontier", 0.95), ("cost path", 0.95), ("search results", 0.95), ("exclusion protocol", 0.95), ("robots exclusion", 0.95), ("node path", 0.7), ("heuristic value", 0.7), ("lowest cost", 0.7), ("cost node", 0.7)]
computers_ai_textmining = M.fromList [("parameters call", 2.55), ("text mining", 1.15), ("marti hearst", 1.6), ("words format", 1.05), ("natural language", 0.85), ("format parameters", 0.7), ("documents words", 0.7), ("text analytics", 0.7), ("preslav nakov", 0.65), ("curt monash", 0.65), ("data mining", 0.6), ("semantic space", 0.6), ("information retrieval", 0.6)]
computers_microsoft = M.fromList [("microsoft corporation", 2.1), ("windows vista", 1.9), ("corporation microsoft", 1.4), ("microsoft office", 1.0), ("operating system", 0.8), ("playtech estonia", 0.75)]
computers_programming = M.fromList [("programming language", 1.1), ("program programming", 1.75), ("scheme program", 1.75), ("lisp scheme", 1.75), ("scala lisp", 1.75), ("java scala", 1.75), ("lisp java", 1.75), ("java lisp", 1.75), ("debugging java", 1.75), ("debug debugging", 1.75), ("logic debug", 1.75), ("netbeans logic", 1.75), ("intellij netbeans", 1.75), ("eclipse intellij", 1.75), ("ide eclipse", 1.75), ("compilers ide", 1.75), ("compiler compilers", 1.75), ("programming compiler", 1.5), ("pl pl", 1.3), ("computer programs", 1.1), ("iso iec", 1.1), ("software development", 0.85), ("online easily", 0.85), ("virusfree online", 0.85), ("virusfree programming", 0.85), ("visual basic", 0.65), ("easily convert", 0.65), ("online converter", 0.65), ("volley spheres", 0.65), ("full source", 0.65)]
computers_programming_cpp = M.fromList [("programming languages", 0.55)]
computers_programming_java = M.fromList [("core spring", 0.85), ("java net", 0.6)]
computers_programming_ruby = M.fromList [("ruby rails", 2.75), ("rails tutorials", 1.0)]
economics = M.fromList [("goods services", 1.1), ("cost average", 0.5), ("terms starting", 0.5), ("definitions terms", 0.5)]
health = M.fromList [("blood pressure", 0.6), ("blood vessels", 0.5)]
health_exercise = M.fromList [("warmup walk", 0.6), ("minute warmup", 0.6), ("brisk minute", 0.6), ("pull squats", 0.5)]
health_nutrition = M.fromList [("grams calories", 1.25)]
mathematics = M.fromList [("coordinate graph", 1.2), ("triangle triangle", 1.2), ("property multiplication", 0.8), ("square root", 0.8), ("multiplied itself", 0.8), ("line segment", 0.8), ("algebra consists", 0.8), ("expression algebra", 0.8), ("angle angle", 0.8), ("completeness theorem", 0.8), ("property addition", 0.6), ("ordered pair", 0.6), ("angles are", 0.6), ("equation equation", 0.6), ("common multiple", 0.6), ("common factor", 0.6), ("positive negative", 0.6), ("fraction fraction", 0.6), ("numerator denominator", 0.6), ("consists terms", 0.6)]
music = M.fromList [("piece music", 0.55)]
news = M.fromList [("united states", 1.05), ("points hours", 0.55)]
news_economy = M.fromList [("reply this", 1.05), ("vs socialism", 0.5), ("capitalism vs", 0.5)]
news_war = M.fromList [("united states", 1.0)]
religion_judaism = M.fromList [("jewish law", 0.8)]
sports = M.fromList [("oed cites", 1.05), ("american football", 0.55), ("ahdi dates", 0.5)]

twograms = [("chemistry", chemistry), ("computers_ai", computers_ai), ("computers_ai_datamining", computers_ai_datamining), ("computers_ai_learning", computers_ai_learning), ("computers_ai_nlp", computers_ai_nlp), ("computers_ai_search", computers_ai_search), ("computers_ai_textmining", computers_ai_textmining), ("computers_microsoft", computers_microsoft), ("computers_programming", computers_programming), ("computers_programming_c++", computers_programming_cpp), ("computers_programming_java", computers_programming_java), ("computers_programming_ruby", computers_programming_ruby), ("economics", economics), ("health", health), ("health_exercise", health_exercise), ("health_nutrition", health_nutrition), ("mathematics", mathematics), ("music", music), ("news", news), ("news_economy", news_economy), ("news_war", news_war), ("religion_judaism", religion_judaism), ("sports", sports)]
