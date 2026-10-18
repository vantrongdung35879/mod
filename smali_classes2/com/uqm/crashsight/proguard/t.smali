.class public final Lcom/uqm/crashsight/proguard/t;
.super Ljava/lang/Object;
.source "CrashSight"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/uqm/crashsight/proguard/t$a;
    }
.end annotation


# static fields
.field public static a:Ljava/lang/StringBuilder;

.field private static b:Lcom/uqm/crashsight/crashreport/a;

.field private static final c:Lcom/uqm/crashsight/proguard/t$a;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 65
    new-instance v0, Lcom/uqm/crashsight/proguard/t$a;

    invoke-direct {v0}, Lcom/uqm/crashsight/proguard/t$a;-><init>()V

    sput-object v0, Lcom/uqm/crashsight/proguard/t;->c:Lcom/uqm/crashsight/proguard/t$a;

    return-void
.end method

.method public static a(Ljava/util/List;)Ljava/lang/String;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/uqm/crashsight/proguard/t$a;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 189
    sget-object v0, Lcom/uqm/crashsight/proguard/t;->a:Ljava/lang/StringBuilder;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 190
    sget-object v0, Lcom/uqm/crashsight/proguard/t;->a:Ljava/lang/StringBuilder;

    const-string v2, "["

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 193
    :try_start_0
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    const/4 v0, 0x1

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/uqm/crashsight/proguard/t$a;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 194
    const-string v3, ","

    if-nez v0, :cond_0

    .line 195
    :try_start_1
    sget-object v4, Lcom/uqm/crashsight/proguard/t;->a:Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2132
    :cond_0
    sget-object v4, Lcom/uqm/crashsight/proguard/t;->a:Ljava/lang/StringBuilder;

    const-string v5, "{"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 2134
    :try_start_2
    sget-object v4, Lcom/uqm/crashsight/proguard/t;->a:Ljava/lang/StringBuilder;

    const-string v5, "\"M09\":"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v5, v2, Lcom/uqm/crashsight/proguard/t$a;->g:J

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2135
    sget-object v4, Lcom/uqm/crashsight/proguard/t;->a:Ljava/lang/StringBuilder;

    const-string v5, "\"M13\":"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, v2, Lcom/uqm/crashsight/proguard/t$a;->l:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2136
    sget-object v4, Lcom/uqm/crashsight/proguard/t;->a:Ljava/lang/StringBuilder;

    const-string v5, "\"M16\":"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v5, v2, Lcom/uqm/crashsight/proguard/t$a;->h:J

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2137
    sget-object v4, Lcom/uqm/crashsight/proguard/t;->a:Ljava/lang/StringBuilder;

    const-string v5, "\"M24\":"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v5, v2, Lcom/uqm/crashsight/proguard/t$a;->i:J

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2138
    sget-object v4, Lcom/uqm/crashsight/proguard/t;->a:Ljava/lang/StringBuilder;

    const-string v5, "\"M17\":"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v5, v2, Lcom/uqm/crashsight/proguard/t$a;->j:J

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2139
    sget-object v4, Lcom/uqm/crashsight/proguard/t;->a:Ljava/lang/StringBuilder;

    const-string v5, "\"M29\":"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v5, v2, Lcom/uqm/crashsight/proguard/t$a;->k:J

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    if-eqz v0, :cond_4

    .line 2141
    sget-object v0, Lcom/uqm/crashsight/proguard/t;->a:Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2142
    invoke-static {}, Lcom/uqm/crashsight/crashreport/common/info/a;->d()Lcom/uqm/crashsight/crashreport/common/info/a;

    move-result-object v0
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 2143
    const-string v2, "\","

    if-eqz v0, :cond_3

    .line 2144
    :try_start_3
    sget-object v4, Lcom/uqm/crashsight/proguard/t;->a:Ljava/lang/StringBuilder;

    const-string v5, "\"M25\":\""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2483
    iget-object v5, v0, Lcom/uqm/crashsight/crashreport/common/info/a;->f:Ljava/lang/String;

    .line 2144
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2145
    sget-object v4, Lcom/uqm/crashsight/proguard/t;->a:Ljava/lang/StringBuilder;

    const-string v5, "\"M00\":\""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, v0, Lcom/uqm/crashsight/crashreport/common/info/a;->n:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2146
    sget-object v4, Lcom/uqm/crashsight/proguard/t;->a:Ljava/lang/StringBuilder;

    const-string v5, "\"M01\":\""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/uqm/crashsight/crashreport/common/info/a;->k()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2147
    sget-object v4, Lcom/uqm/crashsight/proguard/t;->a:Ljava/lang/StringBuilder;

    const-string v5, "\"M04\":\""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/uqm/crashsight/crashreport/common/info/a;->t()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2148
    sget-object v4, Lcom/uqm/crashsight/proguard/t;->a:Ljava/lang/StringBuilder;

    const-string v5, "\"M05\":\""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/uqm/crashsight/crashreport/common/info/a;->u()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2149
    sget-object v4, Lcom/uqm/crashsight/proguard/t;->a:Ljava/lang/StringBuilder;

    const-string v5, "\"M06\":\""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/uqm/crashsight/crashreport/common/info/a;->j()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2150
    sget-object v4, Lcom/uqm/crashsight/proguard/t;->a:Ljava/lang/StringBuilder;

    const-string v5, "\"M07\":\""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/uqm/crashsight/crashreport/common/info/a;->J()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2151
    sget-object v4, Lcom/uqm/crashsight/proguard/t;->a:Ljava/lang/StringBuilder;

    const-string v5, "\"M08\":"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3320
    iget-wide v5, v0, Lcom/uqm/crashsight/crashreport/common/info/a;->a:J

    .line 2151
    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2153
    iget-object v4, v0, Lcom/uqm/crashsight/crashreport/common/info/a;->G:Ljava/util/List;

    if-eqz v4, :cond_2

    iget-object v4, v0, Lcom/uqm/crashsight/crashreport/common/info/a;->G:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_2

    .line 2154
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 2155
    iget-object v5, v0, Lcom/uqm/crashsight/crashreport/common/info/a;->G:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    add-int/lit8 v5, v5, -0xa

    invoke-static {v1, v5}, Ljava/lang/Math;->max(II)I

    move-result v5

    .line 2156
    :goto_1
    iget-object v6, v0, Lcom/uqm/crashsight/crashreport/common/info/a;->G:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    if-ge v5, v6, :cond_1

    .line 2157
    iget-object v6, v0, Lcom/uqm/crashsight/crashreport/common/info/a;->G:Ljava/util/List;

    invoke-interface {v6, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 2159
    :cond_1
    sget-object v5, Lcom/uqm/crashsight/proguard/t;->a:Ljava/lang/StringBuilder;

    const-string v6, "\"M19\":\""

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2162
    :cond_2
    sget-object v4, Lcom/uqm/crashsight/proguard/t;->a:Ljava/lang/StringBuilder;

    const-string v5, "\"M26\":\""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/uqm/crashsight/crashreport/common/info/a;->g()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2163
    sget-object v4, Lcom/uqm/crashsight/proguard/t;->a:Ljava/lang/StringBuilder;

    const-string v5, "\"M27\":\""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/uqm/crashsight/crashreport/common/info/a;->h()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2165
    :cond_3
    sget-object v0, Lcom/uqm/crashsight/proguard/t;->a:Ljava/lang/StringBuilder;

    const-string v4, "\"M14\":"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-wide v4, Lcom/uqm/crashsight/proguard/t$a;->m:J

    invoke-virtual {v0, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2166
    sget-object v0, Lcom/uqm/crashsight/proguard/t;->a:Ljava/lang/StringBuilder;

    const-string v4, "\"M28\":"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-wide v4, Lcom/uqm/crashsight/proguard/t$a;->n:J

    invoke-virtual {v0, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2167
    sget-object v0, Lcom/uqm/crashsight/proguard/t;->a:Ljava/lang/StringBuilder;

    const-string v4, "\"M30\":"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v4, Lcom/uqm/crashsight/proguard/t$a;->o:I

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 2168
    invoke-static {}, Lcom/uqm/crashsight/crashreport/common/info/d;->a()Lcom/uqm/crashsight/crashreport/common/info/d;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 2170
    sget-object v4, Lcom/uqm/crashsight/proguard/t;->a:Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2171
    sget-object v3, Lcom/uqm/crashsight/proguard/t;->a:Ljava/lang/StringBuilder;

    const-string v4, "\"M10\":\""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/uqm/crashsight/crashreport/common/info/d;->d()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2172
    sget-object v3, Lcom/uqm/crashsight/proguard/t;->a:Ljava/lang/StringBuilder;

    const-string v4, "\"M11\":\""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/uqm/crashsight/crashreport/common/info/d;->b()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2173
    sget-object v2, Lcom/uqm/crashsight/proguard/t;->a:Ljava/lang/StringBuilder;

    const-string v3, "\"M12\":\""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/uqm/crashsight/crashreport/common/info/d;->c()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "\""

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_2

    :catch_0
    move-exception v0

    .line 2177
    :try_start_4
    const-string v2, "MemStatMgr toJson error"

    new-array v3, v1, [Ljava/lang/Object;

    invoke-static {v2, v3}, Lcom/uqm/crashsight/proguard/q;->e(Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 2178
    invoke-static {v0}, Lcom/uqm/crashsight/proguard/q;->b(Ljava/lang/Throwable;)V

    .line 2180
    :cond_4
    :goto_2
    sget-object v0, Lcom/uqm/crashsight/proguard/t;->a:Ljava/lang/StringBuilder;

    const-string v2, "}"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    const/4 v0, 0x0

    goto/16 :goto_0

    :catch_1
    move-exception p0

    .line 201
    const-string v0, "memInfoList toJson error"

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/uqm/crashsight/proguard/q;->e(Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 202
    invoke-static {p0}, Lcom/uqm/crashsight/proguard/q;->b(Ljava/lang/Throwable;)V

    .line 204
    :cond_5
    sget-object p0, Lcom/uqm/crashsight/proguard/t;->a:Ljava/lang/StringBuilder;

    const-string v0, "]"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 205
    sget-object p0, Lcom/uqm/crashsight/proguard/t;->a:Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static a()V
    .locals 5

    .line 79
    sget-wide v0, Lcom/uqm/crashsight/proguard/t$a;->m:J

    const-wide/16 v2, -0x1

    cmp-long v4, v0, v2

    if-eqz v4, :cond_0

    sget-wide v0, Lcom/uqm/crashsight/proguard/t$a;->n:J

    cmp-long v4, v0, v2

    if-nez v4, :cond_2

    :cond_0
    const/4 v0, 0x0

    .line 81
    :try_start_0
    sget-object v1, Lcom/uqm/crashsight/proguard/t;->b:Lcom/uqm/crashsight/crashreport/a;

    invoke-interface {v1}, Lcom/uqm/crashsight/crashreport/a;->getTotalMemAndSwapFromNative()[J

    move-result-object v1

    if-eqz v1, :cond_1

    .line 82
    array-length v2, v1

    const/4 v3, 0x2

    if-ne v2, v3, :cond_1

    .line 83
    aget-wide v2, v1, v0

    const/16 v4, 0xa

    shl-long/2addr v2, v4

    sput-wide v2, Lcom/uqm/crashsight/proguard/t$a;->m:J

    const/4 v2, 0x1

    .line 84
    aget-wide v2, v1, v2

    shl-long v1, v2, v4

    sput-wide v1, Lcom/uqm/crashsight/proguard/t$a;->n:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    return-void

    :catchall_0
    move-exception v1

    .line 87
    const-string v2, "getTotalMemAndSwapFromNative error"

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {v2, v0}, Lcom/uqm/crashsight/proguard/p;->d(Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 88
    invoke-static {v1}, Lcom/uqm/crashsight/proguard/p;->a(Ljava/lang/Throwable;)Z

    :cond_2
    return-void
.end method

.method public static a(I)V
    .locals 0

    .line 94
    sput p0, Lcom/uqm/crashsight/proguard/t$a;->o:I

    return-void
.end method

.method public static a(Lcom/uqm/crashsight/crashreport/a;)V
    .locals 0

    .line 72
    sput-object p0, Lcom/uqm/crashsight/proguard/t;->b:Lcom/uqm/crashsight/crashreport/a;

    return-void
.end method

.method public static a(Ljava/util/List;J)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/uqm/crashsight/proguard/t$a;",
            ">;J)V"
        }
    .end annotation

    .line 214
    invoke-static {}, Lcom/uqm/crashsight/crashreport/common/info/a;->d()Lcom/uqm/crashsight/crashreport/common/info/a;

    move-result-object v0

    .line 215
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v1

    int-to-long v1, v1

    rem-long/2addr p1, v1

    long-to-int p2, p1

    .line 216
    invoke-interface {p0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/uqm/crashsight/proguard/t$a;

    if-eqz p0, :cond_1

    if-eqz v0, :cond_0

    .line 219
    invoke-virtual {v0}, Lcom/uqm/crashsight/crashreport/common/info/a;->k()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/uqm/crashsight/proguard/t$a;->a:Ljava/lang/String;

    .line 220
    invoke-virtual {v0}, Lcom/uqm/crashsight/crashreport/common/info/a;->t()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/uqm/crashsight/proguard/t$a;->b:Ljava/lang/String;

    .line 221
    invoke-virtual {v0}, Lcom/uqm/crashsight/crashreport/common/info/a;->u()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/uqm/crashsight/proguard/t$a;->c:Ljava/lang/String;

    .line 222
    invoke-static {}, Lcom/uqm/crashsight/crashreport/common/info/a;->j()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/uqm/crashsight/proguard/t$a;->d:Ljava/lang/String;

    .line 223
    invoke-virtual {v0}, Lcom/uqm/crashsight/crashreport/common/info/a;->J()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/uqm/crashsight/proguard/t$a;->e:Ljava/lang/String;

    .line 4320
    iget-wide p1, v0, Lcom/uqm/crashsight/crashreport/common/info/a;->a:J

    .line 224
    iput-wide p1, p0, Lcom/uqm/crashsight/proguard/t$a;->f:J

    .line 226
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p1

    iput-wide p1, p0, Lcom/uqm/crashsight/proguard/t$a;->g:J

    .line 227
    sget-object p1, Lcom/uqm/crashsight/proguard/t;->c:Lcom/uqm/crashsight/proguard/t$a;

    iget-wide v0, p1, Lcom/uqm/crashsight/proguard/t$a;->h:J

    iput-wide v0, p0, Lcom/uqm/crashsight/proguard/t$a;->h:J

    .line 228
    iget-wide v0, p1, Lcom/uqm/crashsight/proguard/t$a;->i:J

    iput-wide v0, p0, Lcom/uqm/crashsight/proguard/t$a;->i:J

    .line 229
    iget-wide v0, p1, Lcom/uqm/crashsight/proguard/t$a;->j:J

    iput-wide v0, p0, Lcom/uqm/crashsight/proguard/t$a;->j:J

    .line 230
    iget-wide v0, p1, Lcom/uqm/crashsight/proguard/t$a;->k:J

    iput-wide v0, p0, Lcom/uqm/crashsight/proguard/t$a;->k:J

    .line 231
    iget p1, p1, Lcom/uqm/crashsight/proguard/t$a;->l:I

    iput p1, p0, Lcom/uqm/crashsight/proguard/t$a;->l:I

    :cond_1
    return-void
.end method

.method public static declared-synchronized b()V
    .locals 10

    const-class v0, Lcom/uqm/crashsight/proguard/t;

    monitor-enter v0

    .line 110
    :try_start_0
    sget-object v1, Lcom/uqm/crashsight/proguard/t;->b:Lcom/uqm/crashsight/crashreport/a;

    invoke-interface {v1}, Lcom/uqm/crashsight/crashreport/a;->getRssVssFromNative()[J

    move-result-object v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    const/4 v4, 0x2

    const-wide/16 v5, -0x1

    if-eqz v1, :cond_0

    .line 111
    array-length v7, v1

    if-ne v7, v4, :cond_0

    .line 112
    sget-object v7, Lcom/uqm/crashsight/proguard/t;->c:Lcom/uqm/crashsight/proguard/t$a;

    aget-wide v8, v1, v3

    iput-wide v8, v7, Lcom/uqm/crashsight/proguard/t$a;->i:J

    .line 113
    aget-wide v8, v1, v2

    iput-wide v8, v7, Lcom/uqm/crashsight/proguard/t$a;->h:J

    goto :goto_0

    .line 115
    :cond_0
    sget-object v1, Lcom/uqm/crashsight/proguard/t;->c:Lcom/uqm/crashsight/proguard/t$a;

    iput-wide v5, v1, Lcom/uqm/crashsight/proguard/t$a;->i:J

    .line 116
    iput-wide v5, v1, Lcom/uqm/crashsight/proguard/t$a;->h:J

    .line 118
    :goto_0
    sget-object v1, Lcom/uqm/crashsight/proguard/t;->b:Lcom/uqm/crashsight/crashreport/a;

    invoke-interface {v1}, Lcom/uqm/crashsight/crashreport/a;->getAvailableMemAndSwapFromNative()[J

    move-result-object v1

    if-eqz v1, :cond_1

    .line 119
    array-length v7, v1

    if-ne v7, v4, :cond_1

    .line 120
    sget-object v4, Lcom/uqm/crashsight/proguard/t;->c:Lcom/uqm/crashsight/proguard/t$a;

    aget-wide v5, v1, v3

    const/16 v3, 0xa

    shl-long/2addr v5, v3

    iput-wide v5, v4, Lcom/uqm/crashsight/proguard/t$a;->j:J

    .line 121
    aget-wide v5, v1, v2

    shl-long v1, v5, v3

    iput-wide v1, v4, Lcom/uqm/crashsight/proguard/t$a;->k:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-void

    .line 123
    :cond_1
    :try_start_1
    sget-object v1, Lcom/uqm/crashsight/proguard/t;->c:Lcom/uqm/crashsight/proguard/t$a;

    iput-wide v5, v1, Lcom/uqm/crashsight/proguard/t$a;->j:J

    .line 124
    iput-wide v5, v1, Lcom/uqm/crashsight/proguard/t$a;->k:J
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 126
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method public static b(I)V
    .locals 1

    .line 102
    sget-object v0, Lcom/uqm/crashsight/proguard/t;->c:Lcom/uqm/crashsight/proguard/t$a;

    iput p0, v0, Lcom/uqm/crashsight/proguard/t$a;->l:I

    return-void
.end method
