#include <vector>
#include <unordered_map>

using namespace std;

class Solution {
public:
    vector<int> twoSum(vector<int>& nums, int target) {
        unordered_map<int, int>mapa;

        for (int i = 0; i < nums.size(); i++){
            int numero_atual = nums[i];

            int complemento = target - numero_atual;

            if (mapa.count(complemento)) {
                return {mapa[complemento], i};
            }

            mapa[numero_atual] = i;
        }
        return {};
    }
};