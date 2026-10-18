.class public Lcom/ihoc/mgpa/gradish/g;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/ihoc/mgpa/gradish/J;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(ILjava/lang/String;)V
    .locals 0

    return-void
.end method

.method public a(I[F)V
    .locals 0

    .line 2
    sget-object p2, Lcom/ihoc/mgpa/toolkit/constant/KogKey;->FPS:Lcom/ihoc/mgpa/toolkit/constant/KogKey;

    invoke-virtual {p2}, Lcom/ihoc/mgpa/toolkit/constant/KogKey;->getKey()I

    move-result p2

    if-ne p1, p2, :cond_0

    .line 3
    invoke-static {}, Lcom/ihoc/mgpa/gradish/h;->d()Lcom/ihoc/mgpa/gradish/h;

    move-result-object p1

    invoke-virtual {p1}, Lcom/ihoc/mgpa/gradish/h;->b()V

    :cond_0
    return-void
.end method

.method public a(Ljava/util/HashMap;)V
    .locals 0

    return-void
.end method
