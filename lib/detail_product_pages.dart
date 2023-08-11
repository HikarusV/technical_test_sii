import 'package:flutter/material.dart';

class DetailProductPages extends StatefulWidget {
  const DetailProductPages({super.key});

  @override
  State<DetailProductPages> createState() => _DetailProductPagesState();
}

class _DetailProductPagesState extends State<DetailProductPages> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            decoration: const BoxDecoration(
              image: DecorationImage(
                image: NetworkImage(
                    'https://chemtradea.chemtradeasia.com/images/product/dipentene.webp'),
                fit: BoxFit.cover,
              ),
            ),
            height: 300,
            child: const Placeholder(),
          ),
          // Image.network(
          //     'https://chemtradea.chemtradeasia.com/images/product/dipentene.webp'),
          Column(
            children: [
              SafeArea(
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: Row(
                    children: [
                      const Icon(
                        Icons.arrow_back_ios,
                      ),
                      const SizedBox(
                        width: 10,
                      ),
                      Expanded(
                        child: Container(
                          padding: const EdgeInsets.symmetric(
                            horizontal: 20,
                            vertical: 16,
                          ),
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: Row(
                            children: [
                              Image.asset('assets/icons/Search.png'),
                              const SizedBox(
                                width: 15,
                              ),
                              const Text(
                                'Dipentene',
                              )
                            ],
                          ),
                        ),
                      ),
                      const SizedBox(
                        width: 20,
                      ),
                      Container(
                        padding: const EdgeInsets.symmetric(
                          horizontal: 20,
                          vertical: 16,
                        ),
                        decoration: BoxDecoration(
                          color: const Color(0xFF1BA2CA),
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: Image.asset('assets/icons/Cart_white.png'),
                      ),
                    ],
                  ),
                ),
              ),
              const SizedBox(
                height: 90,
              ),
              Container(
                height: 120,
                padding: const EdgeInsets.symmetric(
                  horizontal: 20,
                  vertical: 16,
                ),
                margin: const EdgeInsets.symmetric(
                  horizontal: 20,
                  vertical: 16,
                ),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(10),
                  boxShadow: const [
                    BoxShadow(
                      color: Color(0x2ACAD5DA),
                    ),
                  ],
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        const Text(
                          'Dipentene',
                          style: TextStyle(
                            color: Color(0xFF17234D),
                          ),
                        ),
                        Container(
                          padding: const EdgeInsets.all(4),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(90),
                            border: Border.all(
                              color: Colors.grey,
                            ),
                          ),
                          child: const Icon(
                            Icons.share,
                            size: 16,
                            color: Color(0xFF17234D),
                          ),
                        ),
                      ],
                    )
                  ],
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
