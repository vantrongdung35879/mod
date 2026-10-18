.class public Lcom/tencent/tme/live/w0/k;
.super Ljava/lang/Object;


# static fields
.field public static i:I = 0x1f40


# instance fields
.field public final a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/tencent/tme/live/w0/i;",
            ">;"
        }
    .end annotation
.end field

.field public b:Ljava/lang/String;

.field public c:Ljava/lang/String;

.field public d:I

.field public e:I

.field public f:I

.field public g:I

.field public h:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/tencent/tme/live/w0/k;->a:Ljava/util/List;

    return-void
.end method

.method public static a(Lcom/tencent/protocol/tme/broadcastMsg/RealtimeQuestionNotify;)Lcom/tencent/tme/live/w0/k;
    .locals 5

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    new-instance v0, Lcom/tencent/tme/live/w0/k;

    invoke-direct {v0}, Lcom/tencent/tme/live/w0/k;-><init>()V

    iget-object v1, p0, Lcom/tencent/protocol/tme/broadcastMsg/RealtimeQuestionNotify;->question_id:Ljava/lang/String;

    const-string v2, ""

    if-nez v1, :cond_1

    move-object v1, v2

    .line 2
    :cond_1
    iput-object v1, v0, Lcom/tencent/tme/live/w0/k;->b:Ljava/lang/String;

    .line 3
    iget-object v1, p0, Lcom/tencent/protocol/tme/broadcastMsg/RealtimeQuestionNotify;->content:Lcom/tencent/protocol/tme/commonschema/MultiLang;

    invoke-static {v1}, Lcom/tencent/tme/live/b1/j;->a(Lcom/tencent/protocol/tme/commonschema/MultiLang;)Ljava/lang/String;

    move-result-object v1

    .line 4
    iput-object v1, v0, Lcom/tencent/tme/live/w0/k;->c:Ljava/lang/String;

    .line 5
    iget-object v1, p0, Lcom/tencent/protocol/tme/broadcastMsg/RealtimeQuestionNotify;->expire:Ljava/lang/Integer;

    invoke-static {v1}, Lcom/tencent/tme/live/b1/j;->a(Ljava/lang/Integer;)I

    move-result v1

    .line 6
    iput v1, v0, Lcom/tencent/tme/live/w0/k;->d:I

    .line 7
    iget-object v1, p0, Lcom/tencent/protocol/tme/broadcastMsg/RealtimeQuestionNotify;->schedule_id:Ljava/lang/String;

    if-nez v1, :cond_2

    goto :goto_0

    :cond_2
    move-object v2, v1

    .line 9
    :goto_0
    iput-object v2, v0, Lcom/tencent/tme/live/w0/k;->h:Ljava/lang/String;

    .line 10
    iget-object v1, p0, Lcom/tencent/protocol/tme/broadcastMsg/RealtimeQuestionNotify;->option_list:Ljava/util/List;

    if-eqz v1, :cond_4

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_4

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/tencent/protocol/tme/broadcastMsg/Option;

    if-nez v2, :cond_3

    goto :goto_1

    .line 11
    :cond_3
    new-instance v3, Lcom/tencent/tme/live/w0/i;

    invoke-direct {v3}, Lcom/tencent/tme/live/w0/i;-><init>()V

    iget-object v4, v2, Lcom/tencent/protocol/tme/broadcastMsg/Option;->option_content:Lcom/tencent/protocol/tme/commonschema/MultiLang;

    invoke-static {v4}, Lcom/tencent/tme/live/b1/j;->a(Lcom/tencent/protocol/tme/commonschema/MultiLang;)Ljava/lang/String;

    move-result-object v4

    .line 12
    iput-object v4, v3, Lcom/tencent/tme/live/w0/i;->c:Ljava/lang/String;

    .line 13
    iget-object v4, v2, Lcom/tencent/protocol/tme/broadcastMsg/Option;->take_number:Ljava/lang/Integer;

    invoke-static {v4}, Lcom/tencent/tme/live/b1/j;->a(Ljava/lang/Integer;)I

    move-result v4

    .line 14
    iput v4, v3, Lcom/tencent/tme/live/w0/i;->d:I

    .line 15
    iget-object v2, v2, Lcom/tencent/protocol/tme/broadcastMsg/Option;->option_id:Ljava/lang/Integer;

    invoke-static {v2}, Lcom/tencent/tme/live/b1/j;->a(Ljava/lang/Integer;)I

    move-result v2

    .line 16
    iput v2, v3, Lcom/tencent/tme/live/w0/i;->e:I

    .line 17
    iget-object v2, v0, Lcom/tencent/tme/live/w0/k;->b:Ljava/lang/String;

    .line 18
    iput-object v2, v3, Lcom/tencent/tme/live/w0/i;->a:Ljava/lang/String;

    .line 19
    iget-object v2, v0, Lcom/tencent/tme/live/w0/k;->h:Ljava/lang/String;

    .line 20
    iput-object v2, v3, Lcom/tencent/tme/live/w0/i;->b:Ljava/lang/String;

    .line 21
    iget-object v2, v0, Lcom/tencent/tme/live/w0/k;->a:Ljava/util/List;

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 22
    :cond_4
    iget-object v1, p0, Lcom/tencent/protocol/tme/broadcastMsg/RealtimeQuestionNotify;->play_type:Ljava/lang/Integer;

    invoke-static {v1}, Lcom/tencent/tme/live/b1/j;->a(Ljava/lang/Integer;)I

    move-result v1

    .line 23
    iput v1, v0, Lcom/tencent/tme/live/w0/k;->g:I

    .line 24
    iget-object v1, p0, Lcom/tencent/protocol/tme/broadcastMsg/RealtimeQuestionNotify;->duration:Ljava/lang/Integer;

    invoke-static {v1}, Lcom/tencent/tme/live/b1/j;->a(Ljava/lang/Integer;)I

    move-result v1

    .line 25
    iput v1, v0, Lcom/tencent/tme/live/w0/k;->e:I

    .line 26
    iget-object v1, p0, Lcom/tencent/protocol/tme/broadcastMsg/RealtimeQuestionNotify;->points:Ljava/lang/Integer;

    invoke-static {v1}, Lcom/tencent/tme/live/b1/j;->a(Ljava/lang/Integer;)I

    move-result v1

    .line 27
    iput v1, v0, Lcom/tencent/tme/live/w0/k;->f:I

    .line 28
    iget-object p0, p0, Lcom/tencent/protocol/tme/broadcastMsg/RealtimeQuestionNotify;->update_period:Ljava/lang/Integer;

    invoke-static {p0}, Lcom/tencent/tme/live/b1/j;->a(Ljava/lang/Integer;)I

    move-result p0

    if-gtz p0, :cond_5

    const/16 p0, 0x8

    :cond_5
    mul-int/lit16 p0, p0, 0x3e8

    .line 29
    sput p0, Lcom/tencent/tme/live/w0/k;->i:I

    return-object v0
.end method


# virtual methods
.method public a()I
    .locals 1

    iget-object v0, p0, Lcom/tencent/tme/live/w0/k;->a:Ljava/util/List;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    :goto_0
    return v0
.end method

.method public a(I)Lcom/tencent/tme/live/w0/i;
    .locals 2

    iget-object v0, p0, Lcom/tencent/tme/live/w0/k;->a:Ljava/util/List;

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    if-ltz p1, :cond_2

    iget-object v0, p0, Lcom/tencent/tme/live/w0/k;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lt p1, v0, :cond_1

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/tencent/tme/live/w0/k;->a:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/tencent/tme/live/w0/i;

    return-object p1

    :cond_2
    :goto_0
    return-object v1
.end method

.method public b()Z
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/tencent/tme/live/w0/k;->b:Ljava/lang/String;

    .line 2
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    :cond_0
    invoke-virtual {p0}, Lcom/tencent/tme/live/w0/k;->a()I

    move-result v0

    const/4 v2, 0x2

    if-ge v0, v2, :cond_1

    return v1

    .line 3
    :cond_1
    iget v0, p0, Lcom/tencent/tme/live/w0/k;->d:I

    if-gtz v0, :cond_2

    return v1

    .line 4
    :cond_2
    iget v0, p0, Lcom/tencent/tme/live/w0/k;->e:I

    if-lez v0, :cond_3

    const/4 v1, 0x1

    :cond_3
    return v1
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    const-string v0, "QuestionBean{optionBeanList.size="

    invoke-static {v0}, Lcom/tencent/tme/live/a/b;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/tencent/tme/live/w0/k;->a:Ljava/util/List;

    if-nez v1, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", questionId=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/tencent/tme/live/w0/k;->b:Ljava/lang/String;

    const-string v2, ", content=\'"

    const/16 v3, 0x27

    invoke-static {v0, v1, v3, v2}, Lcom/tencent/tme/live/v0/e;->a(Ljava/lang/StringBuilder;Ljava/lang/String;CLjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/tencent/tme/live/w0/k;->c:Ljava/lang/String;

    const-string v2, ", expire="

    invoke-static {v0, v1, v3, v2}, Lcom/tencent/tme/live/v0/e;->a(Ljava/lang/StringBuilder;Ljava/lang/String;CLjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/tencent/tme/live/w0/k;->d:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", duration="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/tencent/tme/live/w0/k;->e:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", points="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/tencent/tme/live/w0/k;->f:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", updatePeriod="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v1, Lcom/tencent/tme/live/w0/k;->i:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
