.class public Lcom/ihoc/mgpa/gradish/K0;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ihoc/mgpa/gradish/K0$b;
    }
.end annotation


# static fields
.field private static final i:Ljava/lang/String;

.field private static volatile j:Lcom/ihoc/mgpa/gradish/K0;

.field public static k:Ljava/util/Comparator;


# instance fields
.field private a:Lcom/ihoc/mgpa/gradish/I0;

.field private b:I

.field private c:I

.field private d:Ljava/util/ArrayList;

.field private e:Ljava/util/ArrayList;

.field private f:Ljava/util/ArrayList;

.field private g:Ljava/util/ArrayList;

.field private h:Ljava/util/ArrayList;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    sget-object v0, Lcom/ihoc/mgpa/gradish/o;->b:Ljava/lang/String;

    sput-object v0, Lcom/ihoc/mgpa/gradish/K0;->i:Ljava/lang/String;

    .line 176
    new-instance v0, Lcom/ihoc/mgpa/gradish/K0$a;

    invoke-direct {v0}, Lcom/ihoc/mgpa/gradish/K0$a;-><init>()V

    sput-object v0, Lcom/ihoc/mgpa/gradish/K0;->k:Ljava/util/Comparator;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/ihoc/mgpa/gradish/K0;->d:Ljava/util/ArrayList;

    .line 26
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/ihoc/mgpa/gradish/K0;->e:Ljava/util/ArrayList;

    .line 27
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/ihoc/mgpa/gradish/K0;->f:Ljava/util/ArrayList;

    .line 28
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/ihoc/mgpa/gradish/K0;->g:Ljava/util/ArrayList;

    .line 29
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/ihoc/mgpa/gradish/K0;->h:Ljava/util/ArrayList;

    return-void
.end method

.method private a()V
    .locals 1

    .line 73
    iget-object v0, p0, Lcom/ihoc/mgpa/gradish/K0;->d:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 74
    iget-object v0, p0, Lcom/ihoc/mgpa/gradish/K0;->e:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 75
    iget-object v0, p0, Lcom/ihoc/mgpa/gradish/K0;->f:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 76
    iget-object v0, p0, Lcom/ihoc/mgpa/gradish/K0;->g:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 77
    iget-object v0, p0, Lcom/ihoc/mgpa/gradish/K0;->h:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    return-void
.end method

.method private a(I)V
    .locals 5

    .line 53
    iget-object v0, p0, Lcom/ihoc/mgpa/gradish/K0;->a:Lcom/ihoc/mgpa/gradish/I0;

    invoke-virtual {v0, p1}, Lcom/ihoc/mgpa/gradish/I0;->a(I)I

    move-result v0

    .line 54
    iget-object v1, p0, Lcom/ihoc/mgpa/gradish/K0;->a:Lcom/ihoc/mgpa/gradish/I0;

    invoke-virtual {v1, v0}, Lcom/ihoc/mgpa/gradish/I0;->b(I)I

    move-result v1

    .line 55
    sget-object v2, Lcom/ihoc/mgpa/gradish/K0;->i:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "SceneTypeControler:deleteStartActionSceneInArray: startSceneID: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ", stopSceneID: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ", level: "

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Lcom/ihoc/mgpa/toolkit/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x5

    if-ne v1, p1, :cond_0

    .line 57
    iget-object p1, p0, Lcom/ihoc/mgpa/gradish/K0;->h:Ljava/util/ArrayList;

    invoke-direct {p0, v0, p1}, Lcom/ihoc/mgpa/gradish/K0;->a(ILjava/util/ArrayList;)V

    goto :goto_0

    :cond_0
    const/4 p1, 0x4

    if-ne v1, p1, :cond_1

    .line 59
    iget-object p1, p0, Lcom/ihoc/mgpa/gradish/K0;->g:Ljava/util/ArrayList;

    invoke-direct {p0, v0, p1}, Lcom/ihoc/mgpa/gradish/K0;->a(ILjava/util/ArrayList;)V

    goto :goto_0

    :cond_1
    const/4 p1, 0x3

    if-ne v1, p1, :cond_2

    .line 61
    iget-object p1, p0, Lcom/ihoc/mgpa/gradish/K0;->f:Ljava/util/ArrayList;

    invoke-direct {p0, v0, p1}, Lcom/ihoc/mgpa/gradish/K0;->a(ILjava/util/ArrayList;)V

    goto :goto_0

    :cond_2
    const/4 p1, 0x2

    if-ne v1, p1, :cond_3

    .line 63
    iget-object p1, p0, Lcom/ihoc/mgpa/gradish/K0;->e:Ljava/util/ArrayList;

    invoke-direct {p0, v0, p1}, Lcom/ihoc/mgpa/gradish/K0;->a(ILjava/util/ArrayList;)V

    goto :goto_0

    :cond_3
    const/4 p1, 0x1

    if-ne v1, p1, :cond_4

    .line 65
    iget-object p1, p0, Lcom/ihoc/mgpa/gradish/K0;->d:Ljava/util/ArrayList;

    invoke-direct {p0, v0, p1}, Lcom/ihoc/mgpa/gradish/K0;->a(ILjava/util/ArrayList;)V

    goto :goto_0

    .line 67
    :cond_4
    const-string p1, "SceneTypeControler: can not find scene in action Array. "

    invoke-static {v2, p1}, Lcom/ihoc/mgpa/toolkit/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method private a(ILjava/util/ArrayList;)V
    .locals 2

    if-eqz p2, :cond_1

    .line 68
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 70
    invoke-virtual {p2, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    goto :goto_0

    .line 72
    :cond_0
    sget-object p2, Lcom/ihoc/mgpa/gradish/K0;->i:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "SceneTypeControler:deleteValueInArray: can not find sceneID: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Lcom/ihoc/mgpa/toolkit/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public static b()Lcom/ihoc/mgpa/gradish/K0;
    .locals 2

    .line 1
    sget-object v0, Lcom/ihoc/mgpa/gradish/K0;->j:Lcom/ihoc/mgpa/gradish/K0;

    if-nez v0, :cond_1

    .line 2
    const-class v0, Lcom/ihoc/mgpa/gradish/K0;

    monitor-enter v0

    .line 3
    :try_start_0
    sget-object v1, Lcom/ihoc/mgpa/gradish/K0;->j:Lcom/ihoc/mgpa/gradish/K0;

    if-nez v1, :cond_0

    .line 4
    new-instance v1, Lcom/ihoc/mgpa/gradish/K0;

    invoke-direct {v1}, Lcom/ihoc/mgpa/gradish/K0;-><init>()V

    sput-object v1, Lcom/ihoc/mgpa/gradish/K0;->j:Lcom/ihoc/mgpa/gradish/K0;

    .line 6
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 8
    :cond_1
    :goto_0
    sget-object v0, Lcom/ihoc/mgpa/gradish/K0;->j:Lcom/ihoc/mgpa/gradish/K0;

    return-object v0
.end method

.method private b(I)V
    .locals 2

    .line 9
    iget-object v0, p0, Lcom/ihoc/mgpa/gradish/K0;->a:Lcom/ihoc/mgpa/gradish/I0;

    invoke-virtual {v0, p1}, Lcom/ihoc/mgpa/gradish/I0;->b(I)I

    move-result v0

    const/4 v1, 0x5

    if-ne v0, v1, :cond_0

    .line 11
    iget-object v0, p0, Lcom/ihoc/mgpa/gradish/K0;->h:Ljava/util/ArrayList;

    invoke-direct {p0, p1, v0}, Lcom/ihoc/mgpa/gradish/K0;->b(ILjava/util/ArrayList;)V

    goto :goto_0

    :cond_0
    const/4 v1, 0x4

    if-ne v0, v1, :cond_1

    .line 13
    iget-object v0, p0, Lcom/ihoc/mgpa/gradish/K0;->g:Ljava/util/ArrayList;

    invoke-direct {p0, p1, v0}, Lcom/ihoc/mgpa/gradish/K0;->b(ILjava/util/ArrayList;)V

    goto :goto_0

    :cond_1
    const/4 v1, 0x3

    if-ne v0, v1, :cond_2

    .line 15
    iget-object v0, p0, Lcom/ihoc/mgpa/gradish/K0;->f:Ljava/util/ArrayList;

    invoke-direct {p0, p1, v0}, Lcom/ihoc/mgpa/gradish/K0;->b(ILjava/util/ArrayList;)V

    goto :goto_0

    :cond_2
    const/4 v1, 0x2

    if-ne v0, v1, :cond_3

    .line 17
    iget-object v0, p0, Lcom/ihoc/mgpa/gradish/K0;->e:Ljava/util/ArrayList;

    invoke-direct {p0, p1, v0}, Lcom/ihoc/mgpa/gradish/K0;->b(ILjava/util/ArrayList;)V

    goto :goto_0

    .line 19
    :cond_3
    iget-object v0, p0, Lcom/ihoc/mgpa/gradish/K0;->d:Ljava/util/ArrayList;

    invoke-direct {p0, p1, v0}, Lcom/ihoc/mgpa/gradish/K0;->b(ILjava/util/ArrayList;)V

    :goto_0
    return-void
.end method

.method private b(ILjava/util/ArrayList;)V
    .locals 3

    .line 20
    sget-object v0, Lcom/ihoc/mgpa/gradish/K0;->i:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "SceneTypeControler:saveStartActionSceneToArray: sceneID: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/ihoc/mgpa/toolkit/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 21
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "SceneTypeControler:saveStartActionSceneToArray: arrayList: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/ihoc/mgpa/toolkit/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 22
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 23
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method private c()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/ihoc/mgpa/gradish/K0;->h:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/ihoc/mgpa/gradish/K0;->h:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p0, Lcom/ihoc/mgpa/gradish/K0;->c:I

    goto/16 :goto_0

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/ihoc/mgpa/gradish/K0;->g:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_1

    .line 4
    iget-object v0, p0, Lcom/ihoc/mgpa/gradish/K0;->g:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p0, Lcom/ihoc/mgpa/gradish/K0;->c:I

    goto :goto_0

    .line 5
    :cond_1
    iget-object v0, p0, Lcom/ihoc/mgpa/gradish/K0;->f:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_2

    .line 6
    iget-object v0, p0, Lcom/ihoc/mgpa/gradish/K0;->f:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p0, Lcom/ihoc/mgpa/gradish/K0;->c:I

    goto :goto_0

    .line 7
    :cond_2
    iget-object v0, p0, Lcom/ihoc/mgpa/gradish/K0;->e:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_3

    .line 8
    iget-object v0, p0, Lcom/ihoc/mgpa/gradish/K0;->e:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p0, Lcom/ihoc/mgpa/gradish/K0;->c:I

    goto :goto_0

    .line 9
    :cond_3
    iget-object v0, p0, Lcom/ihoc/mgpa/gradish/K0;->d:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_4

    .line 10
    iget-object v0, p0, Lcom/ihoc/mgpa/gradish/K0;->d:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p0, Lcom/ihoc/mgpa/gradish/K0;->c:I

    goto :goto_0

    :cond_4
    const/4 v0, -0x1

    .line 12
    iput v0, p0, Lcom/ihoc/mgpa/gradish/K0;->c:I

    :goto_0
    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;)I
    .locals 4

    .line 2
    iget-object v0, p0, Lcom/ihoc/mgpa/gradish/K0;->a:Lcom/ihoc/mgpa/gradish/I0;

    if-nez v0, :cond_0

    const/4 p1, -0x2

    return p1

    .line 5
    :cond_0
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    .line 7
    iget-object v0, p0, Lcom/ihoc/mgpa/gradish/K0;->a:Lcom/ihoc/mgpa/gradish/I0;

    invoke-virtual {v0, p1}, Lcom/ihoc/mgpa/gradish/I0;->c(I)Z

    move-result v0

    const/4 v1, -0x1

    if-eqz v0, :cond_3

    .line 9
    iput p1, p0, Lcom/ihoc/mgpa/gradish/K0;->b:I

    .line 11
    iget-object v0, p0, Lcom/ihoc/mgpa/gradish/K0;->a:Lcom/ihoc/mgpa/gradish/I0;

    invoke-virtual {v0, p1}, Lcom/ihoc/mgpa/gradish/I0;->d(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 13
    invoke-direct {p0}, Lcom/ihoc/mgpa/gradish/K0;->a()V

    .line 14
    iput v1, p0, Lcom/ihoc/mgpa/gradish/K0;->c:I

    return p1

    .line 18
    :cond_1
    iget v0, p0, Lcom/ihoc/mgpa/gradish/K0;->c:I

    if-ne v0, v1, :cond_2

    return p1

    :cond_2
    return v1

    .line 25
    :cond_3
    iget-object v0, p0, Lcom/ihoc/mgpa/gradish/K0;->a:Lcom/ihoc/mgpa/gradish/I0;

    invoke-virtual {v0, p1}, Lcom/ihoc/mgpa/gradish/I0;->e(I)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 28
    iget v0, p0, Lcom/ihoc/mgpa/gradish/K0;->c:I

    if-ne v0, v1, :cond_4

    .line 29
    iput p1, p0, Lcom/ihoc/mgpa/gradish/K0;->c:I

    .line 30
    invoke-direct {p0, p1}, Lcom/ihoc/mgpa/gradish/K0;->b(I)V

    return p1

    .line 34
    :cond_4
    iget-object v0, p0, Lcom/ihoc/mgpa/gradish/K0;->a:Lcom/ihoc/mgpa/gradish/I0;

    invoke-virtual {v0, p1}, Lcom/ihoc/mgpa/gradish/I0;->b(I)I

    move-result v0

    .line 35
    iget-object v2, p0, Lcom/ihoc/mgpa/gradish/K0;->a:Lcom/ihoc/mgpa/gradish/I0;

    iget v3, p0, Lcom/ihoc/mgpa/gradish/K0;->c:I

    invoke-virtual {v2, v3}, Lcom/ihoc/mgpa/gradish/I0;->b(I)I

    move-result v2

    if-lt v0, v2, :cond_5

    .line 36
    iput p1, p0, Lcom/ihoc/mgpa/gradish/K0;->c:I

    .line 37
    invoke-direct {p0, p1}, Lcom/ihoc/mgpa/gradish/K0;->b(I)V

    return p1

    .line 41
    :cond_5
    invoke-direct {p0, p1}, Lcom/ihoc/mgpa/gradish/K0;->b(I)V

    return v1

    .line 44
    :cond_6
    iget-object v0, p0, Lcom/ihoc/mgpa/gradish/K0;->a:Lcom/ihoc/mgpa/gradish/I0;

    invoke-virtual {v0, p1}, Lcom/ihoc/mgpa/gradish/I0;->f(I)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 46
    invoke-direct {p0, p1}, Lcom/ihoc/mgpa/gradish/K0;->a(I)V

    .line 48
    invoke-direct {p0}, Lcom/ihoc/mgpa/gradish/K0;->c()V

    .line 49
    sget-object p1, Lcom/ihoc/mgpa/gradish/K0;->i:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "SceneTypeControler:  stop action scene, now doing scene: "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p0, Lcom/ihoc/mgpa/gradish/K0;->c:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/ihoc/mgpa/toolkit/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 51
    iget p1, p0, Lcom/ihoc/mgpa/gradish/K0;->c:I

    if-ne p1, v1, :cond_7

    .line 52
    iget p1, p0, Lcom/ihoc/mgpa/gradish/K0;->b:I

    :cond_7
    return p1
.end method

.method public a(Lcom/ihoc/mgpa/gradish/I0;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/ihoc/mgpa/gradish/K0;->a:Lcom/ihoc/mgpa/gradish/I0;

    return-void
.end method
