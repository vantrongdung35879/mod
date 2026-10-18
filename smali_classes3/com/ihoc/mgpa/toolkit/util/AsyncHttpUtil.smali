.class public Lcom/ihoc/mgpa/toolkit/util/AsyncHttpUtil;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ihoc/mgpa/toolkit/util/AsyncHttpUtil$HttpCallback;,
        Lcom/ihoc/mgpa/toolkit/util/AsyncHttpUtil$MyAsyncTask;
    }
.end annotation


# instance fields
.field private httpCallback:Lcom/ihoc/mgpa/toolkit/util/AsyncHttpUtil$HttpCallback;


# direct methods
.method public constructor <init>(Lcom/ihoc/mgpa/toolkit/util/AsyncHttpUtil$HttpCallback;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/ihoc/mgpa/toolkit/util/AsyncHttpUtil;->httpCallback:Lcom/ihoc/mgpa/toolkit/util/AsyncHttpUtil$HttpCallback;

    return-void
.end method

.method static synthetic access$000(Lcom/ihoc/mgpa/toolkit/util/AsyncHttpUtil;)Lcom/ihoc/mgpa/toolkit/util/AsyncHttpUtil$HttpCallback;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/ihoc/mgpa/toolkit/util/AsyncHttpUtil;->httpCallback:Lcom/ihoc/mgpa/toolkit/util/AsyncHttpUtil$HttpCallback;

    return-object p0
.end method


# virtual methods
.method public get(Ljava/lang/String;)V
    .locals 3

    .line 1
    new-instance v0, Lcom/ihoc/mgpa/toolkit/util/AsyncHttpUtil$MyAsyncTask;

    const-string v1, "GET"

    const/4 v2, 0x0

    invoke-direct {v0, p0, p1, v1, v2}, Lcom/ihoc/mgpa/toolkit/util/AsyncHttpUtil$MyAsyncTask;-><init>(Lcom/ihoc/mgpa/toolkit/util/AsyncHttpUtil;Ljava/lang/String;Ljava/lang/String;Ljava/util/HashMap;)V

    const/4 p1, 0x0

    new-array p1, p1, [Ljava/lang/String;

    invoke-virtual {v0, p1}, Landroid/os/AsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void
.end method

.method public post(Ljava/lang/String;Ljava/lang/String;)V
    .locals 7

    .line 2
    new-instance v6, Lcom/ihoc/mgpa/toolkit/util/AsyncHttpUtil$MyAsyncTask;

    const-string v3, "POST"

    const/4 v4, 0x0

    move-object v0, v6

    move-object v1, p0

    move-object v2, p1

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Lcom/ihoc/mgpa/toolkit/util/AsyncHttpUtil$MyAsyncTask;-><init>(Lcom/ihoc/mgpa/toolkit/util/AsyncHttpUtil;Ljava/lang/String;Ljava/lang/String;Ljava/util/HashMap;Ljava/lang/String;)V

    const/4 p1, 0x0

    new-array p1, p1, [Ljava/lang/String;

    invoke-virtual {v6, p1}, Landroid/os/AsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void
.end method

.method public post(Ljava/lang/String;Ljava/util/HashMap;Ljava/lang/String;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 1
    new-instance v6, Lcom/ihoc/mgpa/toolkit/util/AsyncHttpUtil$MyAsyncTask;

    const-string v3, "POST"

    move-object v0, v6

    move-object v1, p0

    move-object v2, p1

    move-object v4, p2

    move-object v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/ihoc/mgpa/toolkit/util/AsyncHttpUtil$MyAsyncTask;-><init>(Lcom/ihoc/mgpa/toolkit/util/AsyncHttpUtil;Ljava/lang/String;Ljava/lang/String;Ljava/util/HashMap;Ljava/lang/String;)V

    const/4 p1, 0x0

    new-array p1, p1, [Ljava/lang/String;

    invoke-virtual {v6, p1}, Landroid/os/AsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void
.end method

.method public postForm(Ljava/lang/String;Ljava/util/HashMap;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 2
    new-instance v6, Lcom/ihoc/mgpa/toolkit/util/AsyncHttpUtil$MyAsyncTask;

    const-string v3, "POSTFORM"

    const/4 v4, 0x0

    move-object v0, v6

    move-object v1, p0

    move-object v2, p1

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Lcom/ihoc/mgpa/toolkit/util/AsyncHttpUtil$MyAsyncTask;-><init>(Lcom/ihoc/mgpa/toolkit/util/AsyncHttpUtil;Ljava/lang/String;Ljava/lang/String;Ljava/util/HashMap;Ljava/util/HashMap;)V

    const/4 p1, 0x0

    new-array p1, p1, [Ljava/lang/String;

    invoke-virtual {v6, p1}, Landroid/os/AsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void
.end method

.method public postForm(Ljava/lang/String;Ljava/util/HashMap;Ljava/util/HashMap;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 1
    new-instance v6, Lcom/ihoc/mgpa/toolkit/util/AsyncHttpUtil$MyAsyncTask;

    const-string v3, "POSTFORM"

    move-object v0, v6

    move-object v1, p0

    move-object v2, p1

    move-object v4, p2

    move-object v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/ihoc/mgpa/toolkit/util/AsyncHttpUtil$MyAsyncTask;-><init>(Lcom/ihoc/mgpa/toolkit/util/AsyncHttpUtil;Ljava/lang/String;Ljava/lang/String;Ljava/util/HashMap;Ljava/util/HashMap;)V

    const/4 p1, 0x0

    new-array p1, p1, [Ljava/lang/String;

    invoke-virtual {v6, p1}, Landroid/os/AsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void
.end method

.method public uploadFile(Ljava/lang/String;Ljava/util/HashMap;Ljava/lang/String;Ljava/lang/String;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 1
    new-instance v7, Lcom/ihoc/mgpa/toolkit/util/AsyncHttpUtil$MyAsyncTask;

    const-string v3, "UPLOADFile"

    move-object v0, v7

    move-object v1, p0

    move-object v2, p1

    move-object v4, p2

    move-object v5, p3

    move-object v6, p4

    invoke-direct/range {v0 .. v6}, Lcom/ihoc/mgpa/toolkit/util/AsyncHttpUtil$MyAsyncTask;-><init>(Lcom/ihoc/mgpa/toolkit/util/AsyncHttpUtil;Ljava/lang/String;Ljava/lang/String;Ljava/util/HashMap;Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x0

    new-array p1, p1, [Ljava/lang/String;

    invoke-virtual {v7, p1}, Landroid/os/AsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void
.end method
