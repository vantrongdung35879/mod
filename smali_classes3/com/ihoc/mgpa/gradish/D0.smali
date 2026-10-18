.class public Lcom/ihoc/mgpa/gradish/D0;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:Ljava/lang/String;

.field private b:I

.field private c:Ljava/lang/String;

.field private d:Ljava/lang/String;

.field private e:I

.field private f:Ljava/lang/String;

.field private g:Ljava/lang/String;

.field private h:I

.field private i:Z


# direct methods
.method public constructor <init>(Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;I)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lcom/ihoc/mgpa/gradish/D0;->i:Z

    .line 15
    iput p3, p0, Lcom/ihoc/mgpa/gradish/D0;->b:I

    .line 16
    iput-object p1, p0, Lcom/ihoc/mgpa/gradish/D0;->d:Ljava/lang/String;

    .line 17
    iput p2, p0, Lcom/ihoc/mgpa/gradish/D0;->e:I

    .line 18
    iput-object p4, p0, Lcom/ihoc/mgpa/gradish/D0;->f:Ljava/lang/String;

    .line 19
    iput-object p5, p0, Lcom/ihoc/mgpa/gradish/D0;->g:Ljava/lang/String;

    .line 20
    iput p6, p0, Lcom/ihoc/mgpa/gradish/D0;->h:I

    .line 21
    invoke-static {}, Lcom/ihoc/mgpa/gradish/t1;->b()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/ihoc/mgpa/toolkit/util/EncryptUtil;->getMD5(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/ihoc/mgpa/gradish/D0;->a:Ljava/lang/String;

    .line 22
    invoke-static {}, Lcom/ihoc/mgpa/toolkit/util/AppUtil;->getGamePackageName()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/ihoc/mgpa/gradish/D0;->c:Ljava/lang/String;

    .line 23
    iget-object p2, p0, Lcom/ihoc/mgpa/gradish/D0;->a:Ljava/lang/String;

    iget-object p3, p0, Lcom/ihoc/mgpa/gradish/D0;->d:Ljava/lang/String;

    iget p4, p0, Lcom/ihoc/mgpa/gradish/D0;->e:I

    iget p5, p0, Lcom/ihoc/mgpa/gradish/D0;->b:I

    invoke-static {p2, p1, p3, p4, p5}, Lcom/ihoc/mgpa/MGPANative;->handleInit(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;II)I

    return-void
.end method

.method public static a(Ljava/lang/String;IIZ)Z
    .locals 0

    .line 2
    invoke-static {p0, p1, p2, p3}, Lcom/ihoc/mgpa/MGPANative;->isRouterSupported(Ljava/lang/String;IIZ)Z

    move-result p0

    return p0
.end method


# virtual methods
.method public a()I
    .locals 1

    .line 5
    invoke-static {}, Lcom/ihoc/mgpa/MGPANative;->handleClose()I

    move-result v0

    return v0
.end method

.method public a(Ljava/lang/String;)I
    .locals 3

    .line 3
    iget-object v0, p0, Lcom/ihoc/mgpa/gradish/D0;->f:Ljava/lang/String;

    iget-object v1, p0, Lcom/ihoc/mgpa/gradish/D0;->g:Ljava/lang/String;

    iget v2, p0, Lcom/ihoc/mgpa/gradish/D0;->h:I

    invoke-static {v0, v1, v2, p1}, Lcom/ihoc/mgpa/MGPANative;->handleHandshake(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)I

    move-result p1

    return p1
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;)I
    .locals 0

    .line 4
    invoke-static {p1, p2}, Lcom/ihoc/mgpa/MGPANative;->handleReportData(Ljava/lang/String;Ljava/lang/String;)I

    move-result p1

    return p1
.end method

.method public a(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/ihoc/mgpa/gradish/D0;->i:Z

    return-void
.end method

.method public b(Ljava/lang/String;)I
    .locals 0

    .line 2
    invoke-static {p1}, Lcom/ihoc/mgpa/MGPANative;->handleUpdateTuples(Ljava/lang/String;)I

    move-result p1

    return p1
.end method

.method public b()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/ihoc/mgpa/gradish/D0;->i:Z

    return v0
.end method

.method public c()I
    .locals 1

    .line 1
    invoke-static {}, Lcom/ihoc/mgpa/MGPANative;->handleHeartBeat()I

    move-result v0

    return v0
.end method
