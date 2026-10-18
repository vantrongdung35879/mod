.class public final Lcom/tencent/qimei/ag/q;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public a:Ljava/lang/String;

.field public b:Ljava/lang/String;

.field public c:Ljava/lang/String;

.field public d:Ljava/lang/String;

.field public e:Ljava/lang/String;

.field public f:Ljava/lang/String;

.field public g:Ljava/lang/String;

.field public h:Ljava/lang/String;

.field public i:Ljava/lang/String;

.field public j:Ljava/lang/String;

.field public k:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 0

    if-nez p1, :cond_1

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0

    .line 56
    :cond_1
    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public static b(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1

    const/4 v0, 0x1

    if-nez p1, :cond_0

    return v0

    :cond_0
    if-eqz p0, :cond_1

    .line 1
    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    return v0
.end method


# virtual methods
.method public final a(I)Ljava/lang/String;
    .locals 0

    packed-switch p1, :pswitch_data_0

    const/4 p1, 0x0

    goto :goto_0

    .line 1
    :pswitch_0
    iget-object p1, p0, Lcom/tencent/qimei/ag/q;->k:Ljava/lang/String;

    goto :goto_0

    .line 2
    :pswitch_1
    iget-object p1, p0, Lcom/tencent/qimei/ag/q;->j:Ljava/lang/String;

    goto :goto_0

    .line 3
    :pswitch_2
    iget-object p1, p0, Lcom/tencent/qimei/ag/q;->i:Ljava/lang/String;

    goto :goto_0

    .line 4
    :pswitch_3
    iget-object p1, p0, Lcom/tencent/qimei/ag/q;->h:Ljava/lang/String;

    goto :goto_0

    .line 5
    :pswitch_4
    iget-object p1, p0, Lcom/tencent/qimei/ag/q;->g:Ljava/lang/String;

    goto :goto_0

    .line 6
    :pswitch_5
    iget-object p1, p0, Lcom/tencent/qimei/ag/q;->f:Ljava/lang/String;

    goto :goto_0

    .line 7
    :pswitch_6
    iget-object p1, p0, Lcom/tencent/qimei/ag/q;->e:Ljava/lang/String;

    goto :goto_0

    .line 8
    :pswitch_7
    iget-object p1, p0, Lcom/tencent/qimei/ag/q;->d:Ljava/lang/String;

    goto :goto_0

    .line 9
    :pswitch_8
    iget-object p1, p0, Lcom/tencent/qimei/ag/q;->c:Ljava/lang/String;

    goto :goto_0

    .line 10
    :pswitch_9
    iget-object p1, p0, Lcom/tencent/qimei/ag/q;->b:Ljava/lang/String;

    goto :goto_0

    .line 11
    :pswitch_a
    iget-object p1, p0, Lcom/tencent/qimei/ag/q;->a:Ljava/lang/String;

    :goto_0
    return-object p1

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final a(ILjava/lang/String;)Z
    .locals 2

    const/4 v0, 0x1

    const/4 v1, 0x0

    packed-switch p1, :pswitch_data_0

    goto/16 :goto_2

    .line 12
    :pswitch_0
    iget-object p1, p0, Lcom/tencent/qimei/ag/q;->k:Ljava/lang/String;

    invoke-static {p1, p2}, Lcom/tencent/qimei/ag/q;->b(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto/16 :goto_0

    .line 15
    :cond_0
    iput-object p2, p0, Lcom/tencent/qimei/ag/q;->k:Ljava/lang/String;

    goto/16 :goto_1

    .line 16
    :pswitch_1
    iget-object p1, p0, Lcom/tencent/qimei/ag/q;->j:Ljava/lang/String;

    invoke-static {p1, p2}, Lcom/tencent/qimei/ag/q;->b(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_1

    goto/16 :goto_0

    .line 19
    :cond_1
    iput-object p2, p0, Lcom/tencent/qimei/ag/q;->j:Ljava/lang/String;

    goto/16 :goto_1

    .line 20
    :pswitch_2
    iget-object p1, p0, Lcom/tencent/qimei/ag/q;->i:Ljava/lang/String;

    invoke-static {p1, p2}, Lcom/tencent/qimei/ag/q;->b(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_2

    goto/16 :goto_0

    .line 23
    :cond_2
    iput-object p2, p0, Lcom/tencent/qimei/ag/q;->i:Ljava/lang/String;

    goto/16 :goto_1

    .line 24
    :pswitch_3
    iget-object p1, p0, Lcom/tencent/qimei/ag/q;->h:Ljava/lang/String;

    invoke-static {p1, p2}, Lcom/tencent/qimei/ag/q;->b(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_3

    goto :goto_0

    .line 27
    :cond_3
    iput-object p2, p0, Lcom/tencent/qimei/ag/q;->h:Ljava/lang/String;

    goto :goto_1

    .line 28
    :pswitch_4
    iget-object p1, p0, Lcom/tencent/qimei/ag/q;->g:Ljava/lang/String;

    invoke-static {p1, p2}, Lcom/tencent/qimei/ag/q;->b(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_4

    goto :goto_0

    .line 31
    :cond_4
    iput-object p2, p0, Lcom/tencent/qimei/ag/q;->g:Ljava/lang/String;

    goto :goto_1

    .line 32
    :pswitch_5
    iget-object p1, p0, Lcom/tencent/qimei/ag/q;->f:Ljava/lang/String;

    invoke-static {p1, p2}, Lcom/tencent/qimei/ag/q;->b(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_5

    goto :goto_0

    .line 35
    :cond_5
    iput-object p2, p0, Lcom/tencent/qimei/ag/q;->f:Ljava/lang/String;

    goto :goto_1

    .line 36
    :pswitch_6
    iget-object p1, p0, Lcom/tencent/qimei/ag/q;->e:Ljava/lang/String;

    invoke-static {p1, p2}, Lcom/tencent/qimei/ag/q;->b(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_6

    goto :goto_0

    .line 39
    :cond_6
    iput-object p2, p0, Lcom/tencent/qimei/ag/q;->e:Ljava/lang/String;

    goto :goto_1

    .line 40
    :pswitch_7
    iget-object p1, p0, Lcom/tencent/qimei/ag/q;->d:Ljava/lang/String;

    invoke-static {p1, p2}, Lcom/tencent/qimei/ag/q;->b(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_7

    goto :goto_0

    .line 43
    :cond_7
    iput-object p2, p0, Lcom/tencent/qimei/ag/q;->d:Ljava/lang/String;

    goto :goto_1

    .line 44
    :pswitch_8
    iget-object p1, p0, Lcom/tencent/qimei/ag/q;->c:Ljava/lang/String;

    invoke-static {p1, p2}, Lcom/tencent/qimei/ag/q;->b(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_8

    goto :goto_0

    .line 47
    :cond_8
    iput-object p2, p0, Lcom/tencent/qimei/ag/q;->c:Ljava/lang/String;

    goto :goto_1

    .line 48
    :pswitch_9
    iget-object p1, p0, Lcom/tencent/qimei/ag/q;->b:Ljava/lang/String;

    invoke-static {p1, p2}, Lcom/tencent/qimei/ag/q;->b(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_9

    goto :goto_0

    .line 51
    :cond_9
    iput-object p2, p0, Lcom/tencent/qimei/ag/q;->b:Ljava/lang/String;

    goto :goto_1

    .line 52
    :pswitch_a
    iget-object p1, p0, Lcom/tencent/qimei/ag/q;->a:Ljava/lang/String;

    invoke-static {p1, p2}, Lcom/tencent/qimei/ag/q;->b(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_a

    :goto_0
    const/4 v0, 0x0

    goto :goto_1

    .line 55
    :cond_a
    iput-object p2, p0, Lcom/tencent/qimei/ag/q;->a:Ljava/lang/String;

    :goto_1
    move v1, v0

    :goto_2
    return v1

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_3

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    const-class v3, Lcom/tencent/qimei/ag/q;

    if-eq v3, v2, :cond_1

    goto/16 :goto_1

    .line 2
    :cond_1
    check-cast p1, Lcom/tencent/qimei/ag/q;

    .line 3
    iget-object v2, p0, Lcom/tencent/qimei/ag/q;->a:Ljava/lang/String;

    iget-object v3, p1, Lcom/tencent/qimei/ag/q;->a:Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/tencent/qimei/ag/q;->a(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/tencent/qimei/ag/q;->b:Ljava/lang/String;

    iget-object v3, p1, Lcom/tencent/qimei/ag/q;->b:Ljava/lang/String;

    .line 4
    invoke-static {v2, v3}, Lcom/tencent/qimei/ag/q;->a(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/tencent/qimei/ag/q;->c:Ljava/lang/String;

    iget-object v3, p1, Lcom/tencent/qimei/ag/q;->c:Ljava/lang/String;

    .line 5
    invoke-static {v2, v3}, Lcom/tencent/qimei/ag/q;->a(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/tencent/qimei/ag/q;->d:Ljava/lang/String;

    iget-object v3, p1, Lcom/tencent/qimei/ag/q;->d:Ljava/lang/String;

    .line 6
    invoke-static {v2, v3}, Lcom/tencent/qimei/ag/q;->a(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/tencent/qimei/ag/q;->e:Ljava/lang/String;

    iget-object v3, p1, Lcom/tencent/qimei/ag/q;->e:Ljava/lang/String;

    .line 7
    invoke-static {v2, v3}, Lcom/tencent/qimei/ag/q;->a(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/tencent/qimei/ag/q;->f:Ljava/lang/String;

    iget-object v3, p1, Lcom/tencent/qimei/ag/q;->f:Ljava/lang/String;

    .line 8
    invoke-static {v2, v3}, Lcom/tencent/qimei/ag/q;->a(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/tencent/qimei/ag/q;->g:Ljava/lang/String;

    iget-object v3, p1, Lcom/tencent/qimei/ag/q;->g:Ljava/lang/String;

    .line 9
    invoke-static {v2, v3}, Lcom/tencent/qimei/ag/q;->a(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/tencent/qimei/ag/q;->h:Ljava/lang/String;

    iget-object v3, p1, Lcom/tencent/qimei/ag/q;->h:Ljava/lang/String;

    .line 10
    invoke-static {v2, v3}, Lcom/tencent/qimei/ag/q;->a(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/tencent/qimei/ag/q;->i:Ljava/lang/String;

    iget-object v3, p1, Lcom/tencent/qimei/ag/q;->i:Ljava/lang/String;

    .line 11
    invoke-static {v2, v3}, Lcom/tencent/qimei/ag/q;->a(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/tencent/qimei/ag/q;->j:Ljava/lang/String;

    iget-object v3, p1, Lcom/tencent/qimei/ag/q;->j:Ljava/lang/String;

    .line 12
    invoke-static {v2, v3}, Lcom/tencent/qimei/ag/q;->a(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/tencent/qimei/ag/q;->k:Ljava/lang/String;

    iget-object p1, p1, Lcom/tencent/qimei/ag/q;->k:Ljava/lang/String;

    .line 13
    invoke-static {v2, p1}, Lcom/tencent/qimei/ag/q;->a(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_2

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_3
    :goto_1
    return v1
.end method
