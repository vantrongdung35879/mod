.class public Lcom/ihoc/mgpa/gradish/r0;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field a:Lcom/ihoc/mgpa/gradish/t0$b;

.field b:Ljava/lang/String;

.field c:I

.field d:I


# direct methods
.method public constructor <init>(Lcom/ihoc/mgpa/gradish/t0$b;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/ihoc/mgpa/gradish/r0;->a:Lcom/ihoc/mgpa/gradish/t0$b;

    .line 3
    iput-object p2, p0, Lcom/ihoc/mgpa/gradish/r0;->b:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ihoc/mgpa/gradish/r0;->b:Ljava/lang/String;

    return-object v0
.end method

.method public a(I)V
    .locals 0

    .line 2
    iput p1, p0, Lcom/ihoc/mgpa/gradish/r0;->d:I

    return-void
.end method

.method public b()Lcom/ihoc/mgpa/gradish/t0$b;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ihoc/mgpa/gradish/r0;->a:Lcom/ihoc/mgpa/gradish/t0$b;

    return-object v0
.end method

.method public b(I)V
    .locals 0

    .line 2
    iput p1, p0, Lcom/ihoc/mgpa/gradish/r0;->c:I

    return-void
.end method

.method public c()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/ihoc/mgpa/gradish/r0;->d:I

    return v0
.end method

.method public d()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/ihoc/mgpa/gradish/r0;->c:I

    return v0
.end method
