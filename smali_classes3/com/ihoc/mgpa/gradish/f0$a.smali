.class Lcom/ihoc/mgpa/gradish/f0$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/ihoc/mgpa/reflectinterface/ITransceiverCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ihoc/mgpa/gradish/f0;->a(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/ihoc/mgpa/gradish/e0;

.field final synthetic b:Lcom/ihoc/mgpa/gradish/f0;


# direct methods
.method constructor <init>(Lcom/ihoc/mgpa/gradish/f0;Lcom/ihoc/mgpa/gradish/e0;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/ihoc/mgpa/gradish/f0$a;->b:Lcom/ihoc/mgpa/gradish/f0;

    iput-object p2, p0, Lcom/ihoc/mgpa/gradish/f0$a;->a:Lcom/ihoc/mgpa/gradish/e0;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public notifySystemInfo(Ljava/lang/String;)I
    .locals 5

    const/4 v0, 0x0

    .line 1
    :try_start_0
    new-instance v1, Lorg/json/JSONArray;

    invoke-direct {v1, p1}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    const/4 p1, -0x1

    const/4 v2, 0x0

    const/4 v3, -0x1

    .line 3
    :goto_0
    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v4

    if-ge v2, v4, :cond_2

    .line 4
    invoke-virtual {v1, v2}, Lorg/json/JSONArray;->optInt(I)I

    move-result v4

    if-lez v4, :cond_1

    if-eq v3, p1, :cond_0

    if-ge v4, v3, :cond_1

    :cond_0
    move v3, v4

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 9
    :cond_2
    iget-object p1, p0, Lcom/ihoc/mgpa/gradish/f0$a;->a:Lcom/ihoc/mgpa/gradish/e0;

    invoke-virtual {p1, v3}, Lcom/ihoc/mgpa/gradish/e0;->a(I)I

    move-result p1

    .line 10
    invoke-static {}, Lcom/ihoc/mgpa/gradish/f0;->a()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "level = "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/ihoc/mgpa/toolkit/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 11
    iget-object v1, p0, Lcom/ihoc/mgpa/gradish/f0$a;->b:Lcom/ihoc/mgpa/gradish/f0;

    invoke-static {v1}, Lcom/ihoc/mgpa/gradish/f0;->a(Lcom/ihoc/mgpa/gradish/f0;)I

    move-result v1

    if-eq p1, v1, :cond_3

    .line 12
    iget-object v1, p0, Lcom/ihoc/mgpa/gradish/f0$a;->b:Lcom/ihoc/mgpa/gradish/f0;

    invoke-static {v1, p1}, Lcom/ihoc/mgpa/gradish/f0;->b(Lcom/ihoc/mgpa/gradish/f0;I)V

    .line 14
    :cond_3
    iget-object v1, p0, Lcom/ihoc/mgpa/gradish/f0$a;->b:Lcom/ihoc/mgpa/gradish/f0;

    invoke-static {v1, p1}, Lcom/ihoc/mgpa/gradish/f0;->a(Lcom/ihoc/mgpa/gradish/f0;I)I

    .line 15
    iget-object p1, p0, Lcom/ihoc/mgpa/gradish/f0$a;->b:Lcom/ihoc/mgpa/gradish/f0;

    invoke-static {p1}, Lcom/ihoc/mgpa/gradish/f0;->b(Lcom/ihoc/mgpa/gradish/f0;)Ljava/util/ArrayList;

    move-result-object p1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 16
    iget-object p1, p0, Lcom/ihoc/mgpa/gradish/f0$a;->b:Lcom/ihoc/mgpa/gradish/f0;

    invoke-static {p1}, Lcom/ihoc/mgpa/gradish/f0;->b(Lcom/ihoc/mgpa/gradish/f0;)Ljava/util/ArrayList;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    iget-object v1, p0, Lcom/ihoc/mgpa/gradish/f0$a;->a:Lcom/ihoc/mgpa/gradish/e0;

    invoke-virtual {v1}, Lcom/ihoc/mgpa/gradish/e0;->d()I

    move-result v1

    if-lt p1, v1, :cond_4

    .line 17
    iget-object p1, p0, Lcom/ihoc/mgpa/gradish/f0$a;->b:Lcom/ihoc/mgpa/gradish/f0;

    invoke-static {p1}, Lcom/ihoc/mgpa/gradish/f0;->c(Lcom/ihoc/mgpa/gradish/f0;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    .line 21
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_4
    :goto_1
    return v0
.end method
