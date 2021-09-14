# Riverpod

[자료](https://riverpod.dev/docs/concepts/reading)
## 1. provider 읽기
- ref : providers와 상호작용하게 해주는 객체
1) provider 안에서 ref 가져오기
``` dart
final counter = StateNotifierProvider<Counter, int>((ref) {  
  return Counter(ref);});
class Counter extends StateNotifier<int> {  Counter(this.ref): super(0);
final ProviderRefBase ref;
void increment() {    // Counter can use the "ref" to read other providers    
final repository = ref.read(repositoryProvider);    repository.post('...');  }}
```

2) widget 안에서 ref 가져오기
  - StatelessWidget 대신 ConsumerWidget 사용
  - StatefulWidget+State 대신 ConsumerStatefulWidget+ConsumerState 사용
  - HookConsumerWidget 사용(hooks_riverpod 사용할 때만)
  - HookConsumer 사용(hooks_riverpod 사용할 때만)

## 2. ref 이용하여 provider와 상호작용하기 
- ref.watch : provider 값을 받고, 값이 변했을 때 자동으로 rebuild됨
- ref.listen : provider가 변할 때 action을 수행함
- ref.read : 변화를 무시하면서 provider의 값을 가져오거나 수행함. onclick 이벤트 같은 것에 유용함

* 기능 사용을 위해 가능한 ref.watch을 사용하는 것을 권장. ref.watch를 사용할 때 더욱 reactive, declarative하게 됨
