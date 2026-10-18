.class public Lcom/ihoc/mgpa/gradish/g1;
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
    .locals 1

    .line 1
    invoke-static {}, Lcom/ihoc/mgpa/gradish/f1;->a()Lcom/ihoc/mgpa/gradish/f1;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/ihoc/mgpa/gradish/f1;->a(ILjava/lang/String;)V

    return-void
.end method

.method public a(I[F)V
    .locals 0

    return-void
.end method

.method public a(Ljava/util/HashMap;)V
    .locals 1

    .line 3
    invoke-static {}, Lcom/ihoc/mgpa/gradish/f1;->a()Lcom/ihoc/mgpa/gradish/f1;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/ihoc/mgpa/gradish/f1;->a(Ljava/util/HashMap;)V

    return-void
.end method
