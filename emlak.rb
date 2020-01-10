class Emlak
    attr_accessor  :tip ,:oda_sayisi ,:fiyat ,:il
    #def initialize args           burda yukardaki değişkenleri args olarak alırız ve bunu döngü ile @tip=tip yerine tek tek yazmak yerine
         #args.each do |k,v|       döngü ile @tip=key  tip=value olmak üzere -value nil olmadığı sürece- kısa yoldan yazabiliriz.
         #instance_variable_set("@#{k}", v) unless v.nil?
    #enda
    def initialize(tip,oda_sayisi,fiyat,il)
        @tip=tip
        @oda_sayisi=oda_sayisi
        @fiyat=fiyat
        @il=il 
       
    end
    def to_s
        <<-TAG
        "tip: #{tip}"
        "oda sayısı: #{oda_sayisi}"
        "fiyat: #{fiyat}"
        "il: #{il}"
        
    TAG
    end
    def adet
        puts "adet : #@@count"
    end
end
dizi=[]
while true
    puts "komutu girin"
    x=gets.chomp
    if x=="ekle"
        puts "tipi girin:"
        tip=gets.chomp
        puts "oda sayısı:"
        oda_sayisi=gets.chomp
        puts "fiyatı:"
        fiyat=gets.chomp
        puts "il:"
        il=gets.chomp
        ekle=Emlak.new(tip,oda_sayisi,fiyat,il)
        
        dizi.push(ekle)
    elsif x=="listele" 
        puts "-----------------"
        dizi.each do |items|
            puts items
            puts "-----------------"
        end
        puts dizi.length
       
 
    elsif x=="çıkış"
        exit
        
    end
end

