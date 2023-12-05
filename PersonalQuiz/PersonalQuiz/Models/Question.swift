//
//  Question.swift
//  PersonalQuiz
//
//  Created by Vic on 04.12.2023.
//

struct Question {
    let title: String
    let type: Responstype
    let answers: [Answer]
    
    static func getQuestions() -> [Question] {
        [
            Question(
                title: "Что вы едите?",
                type: .single,
                answers: [
                    Answer(title: "Стейк", animal: .dog),
                    Answer(title: "Рыба", animal: .cat),
                    Answer(title: "Морковь", animal: .rabbit),
                    Answer(title: "Кукуруза", animal: .turtle)
                ]
            ),
            Question(
                title: "Что вам нравится больше?",
                type: .multiple,
                answers: [
                    Answer(title: "Плавать", animal: .dog),
                    Answer(title: "Спать", animal: .cat),
                    Answer(title: "Обниматься", animal: .rabbit),
                    Answer(title: "Есть", animal: .turtle)
                ]
            ),
            Question(
                title: "Любите ли вы поездки на машине?",
                type: .ranged,
                answers: [
                    Answer(title: "Ненавижу", animal: .cat),
                    Answer(title: "Нервничаю", animal: .rabbit),
                    Answer(title: "Не замечаю", animal: .turtle),
                    Answer(title: "Обожаю", animal: .dog)
                ]
            )
        ]
    }
}

enum Responstype {
    case single
    case multiple
    case ranged
}

struct Answer {
    let title: String
    let animal: Animal
}

enum Animal: Character {
    case dog = "🐶"
    case cat = "🐱"
    case rabbit = "🐰"
    case turtle = "🐢"
    
    var definition: String {
        switch self {
        case .dog:
            "Вам нравится быть с друзьями. Вы окружаете себя людьми которые вам нравятся и всегда готовы помочь"
        case .cat:
            "Вы себе на уме. Любите гулять сами по себе. Вы цените одиночество"
        case .rabbit:
            "Вам нравится мягкое. Вы здоровы и полны энергии"
        case .turtle:
            "Ваша сила - в мудрости. Медленный и вдумчивый выйгрывает на больших дистанциях"
        }
    }
}
