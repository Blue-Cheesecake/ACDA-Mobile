# ACDA Mobile

Automatic Clothes Detection Application.

## Abstract

A dress code is implemented to establish a professional or appropriate appearance and promote unity and cohesion. However, traditional dress code verification processes, which heavily rely on human observation and judgment, can be time-consuming and require significant manpower. Therefore, this study aims to use technology to assist the dress code verification process and reduce the time and staff involved. The project is focused on assisting in the verification of uniforms for students in the faculty of Information and Communication Technology (ICT) at Mahidol University during examination seasons. A mobile application that prompts users to input their photos has been developed, creating a system then uses object detection and a deep learning model, to verify the correctness of the garment according to the dress code of the faculty of ICT. The verification process entails the detection of attire into distinct categories such as shirts, skirts, trousers, collars, and belts. The results indicate that all functionalities of the application are usable, and the accuracy of the model is pretty good. User testing has demonstrated that the application can be used efficiently, even by individuals who have no prior experience with it. However, the current model does not account for the validity of shoes and shirts, which may not fully comply with the dress code standards. These limitations point to areas for future enhancement. With further improvement, it has the potential to become an even more powerful tool for educational institutions.


## Clean Architecture Design Pattern

The application of Uncle Bob's Clean Architecture design pattern stands as a robust paradigm, particularly in the development of production-level applications that adhere to the SOLID principles. This architecture promotes a compartmentalized approach where each class and layer are allocated distinct responsibilities, significantly enhancing code readability and maintainability. By reducing technical debt, this pattern facilitates future code scalability and adaptability.

Within the scope of each feature, the architecture is structured into discrete layers, including but not limited to presentation, logic, use case, repository, and data source. These layers act in concert to outline the separation of concerns effectively. Furthermore, data modeling is accomplished through the strategic use of models and entities, each serving as a representation of the domain-specific constructs.

This approach not only streamlines the development process but also ensures that each segment of the codebase functions cohesively yet independently, promoting ease of testing and modification. As a result, Clean Architecture is an optimal choice for complex applications demanding high levels of abstraction and rigorous adherence to object-oriented design principles.

![CleanArchDiagram](https://github.com/user-attachments/assets/cdfd038e-a8d3-46a1-a4ca-446175e24430)

### State Management and Input Validation Technique in Mobile Application

In contemporary mobile applications, ensuring efficient state management and validation is paramount. The design pattern presented herein, enabled using the Riverpod package, serves this purpose efficiently. There are three components of state management including States, State Notifier, and State Provider.

 ![StateManagementDiagram](https://github.com/user-attachments/assets/a10f6255-4f32-430e-a359-a067d0d42d9e)

#### State 

A pivotal component is the State, which encapsulates user input variables. Whether it's textual content from a text field or a Boolean status indicator, the State serves as the immutable snapshot of these variables at any given time.

#### State Notifier and Updating Mechanisms

Its primary responsibility is to observe changes in user input and affect requisite alterations to the State. Through its methods, it can update individual attributes of the State or trigger checks that could further dictate State transitions.

#### State Provider

To enable smooth interplay between the presentation layer and the underlying logic, Providers are instituted. They instantiate and supply `StateNotifiers` and States to the components that demand them.

This triad of State, StateNotifier, and Provider results in a robust and scalable system for managing and validating user input. By adopting this design pattern, developers can ensure that applications remain both reactive to user input and resistant to invalid data submissions.

### Calling API and Watching Their States

Within mobile application development, particularly when following Clean Architecture, interaction with APIs is a foundational aspect. The architecture's logic layer is designed to handle API requests and manage response states such as loading, success, or error. These states are subsequently observed by the presentation layer, ensuring a clear separation of concerns and a responsive user interface.

![CallingApiAndWatchStateDiagram](https://github.com/user-attachments/assets/71a82cc0-a594-46a8-a634-382887d23e34)


