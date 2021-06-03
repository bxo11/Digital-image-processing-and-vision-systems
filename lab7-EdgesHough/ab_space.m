function [H] = ab_space(image,aMin,aMax,aStep,bMin,bMax,bStep)
a = aMin:aStep:aMax;
b_v = bMin:bStep:bMax;
H=zeros(length(a),length(b_v));

for i=1:length(image(1,:))
    for j=1:length(image(:,1))
        if image(i,j)==1
            for k=1:length(a)
                b = -i * a(k) + j;
                [v,bb] = min(abs(b_v-b));
                H(k,bb) = H(k,bb) + 1;
            end
        end
    end
end

end

