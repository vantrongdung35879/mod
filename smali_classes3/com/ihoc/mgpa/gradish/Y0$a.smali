.class Lcom/ihoc/mgpa/gradish/Y0$a;
.super Lcom/ihoc/mgpa/gradish/b1;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ihoc/mgpa/gradish/Y0;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic c:Lcom/ihoc/mgpa/gradish/Y0;


# direct methods
.method constructor <init>(Lcom/ihoc/mgpa/gradish/Y0;II)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/ihoc/mgpa/gradish/Y0$a;->c:Lcom/ihoc/mgpa/gradish/Y0;

    invoke-direct {p0, p2, p3}, Lcom/ihoc/mgpa/gradish/b1;-><init>(II)V

    return-void
.end method


# virtual methods
.method public a(Ljava/util/Map;)V
    .locals 3

    .line 1
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 2
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 3
    iget-object v2, p0, Lcom/ihoc/mgpa/gradish/Y0$a;->c:Lcom/ihoc/mgpa/gradish/Y0;

    invoke-static {v2}, Lcom/ihoc/mgpa/gradish/Y0;->a(Lcom/ihoc/mgpa/gradish/Y0;)Ljava/util/regex/Pattern;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v1

    .line 4
    invoke-virtual {v1}, Ljava/util/regex/Matcher;->find()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 5
    invoke-static {}, Lcom/ihoc/mgpa/gradish/s1;->b()Lcom/ihoc/mgpa/gradish/s1;

    move-result-object v1

    sget-object v2, Lcom/ihoc/mgpa/toolkit/constant/KogKey;->LIGHT_THREAD_TID:Lcom/ihoc/mgpa/toolkit/constant/KogKey;

    invoke-virtual {v2}, Lcom/ihoc/mgpa/toolkit/constant/KogKey;->getKey()I

    move-result v2

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Lcom/ihoc/mgpa/gradish/s1;->c(ILjava/lang/String;)V

    goto :goto_0

    :cond_1
    return-void
.end method
