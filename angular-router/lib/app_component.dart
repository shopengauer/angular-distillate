// Copyright (c) 2017, vasiliy. All rights reserved. Use of this source code
// is governed by a BSD-style license that can be found in the LICENSE file.

import 'package:angular2/angular2.dart';
import 'package:angular2/router.dart';
import 'components/eng_cards_component.dart';
import 'components/business_component.dart';

// AngularDart info: https://webdev.dartlang.org/angular
// Components info: https://webdev.dartlang.org/components

@Component(
  selector: 'my-app',
  styleUrls: const ['app_component.css'],
  template: '''<div class="container">
    <h1>Applications main page</h1>
    <nav>
        <a [routerLink]="['EngCardsPage']">Crisis Center</a>
        <a [routerLink]="['BusinessPage']">Heroes</a>
    </nav>
    <router-outlet></router-outlet>
     </div>''',
  directives: const [ROUTER_DIRECTIVES,EngCardsComponent,BusinessPageComponent],
  providers: const [ROUTER_PROVIDERS],
)
@RouteConfig(const [
  const Route(
      path: '/eng-cards-page',
      name: 'EngCardsPage',
      component: EngCardsComponent
  ),
  const Route(
      path: '/business-page',
      name: 'BusinessPage',
      component: BusinessPageComponent
  )

]

)
class AppComponent {
  // Nothing here yet. All logic is in TodoListComponent.
}
